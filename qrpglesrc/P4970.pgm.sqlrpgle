**free

ctl-opt dftactgrp(*no);

dcl-pi P4970;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4568.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P2770.rpgleinc'

dcl-ds theTable extname('T169') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T169 LIMIT 1;

theCharVar = 'Hello from P4970';
dsply theCharVar;
callp localProc();
P4568();
P326();
P2770();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4970 in the procedure';
end-proc;