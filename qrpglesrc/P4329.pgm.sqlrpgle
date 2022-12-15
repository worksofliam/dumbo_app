**free

ctl-opt dftactgrp(*no);

dcl-pi P4329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P1555.rpgleinc'

dcl-ds theTable extname('T672') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T672 LIMIT 1;

theCharVar = 'Hello from P4329';
dsply theCharVar;
callp localProc();
P935();
P24();
P1555();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4329 in the procedure';
end-proc;