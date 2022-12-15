**free

ctl-opt dftactgrp(*no);

dcl-pi P4522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2741.rpgleinc'
/copy 'qrpgleref/P4070.rpgleinc'
/copy 'qrpgleref/P2967.rpgleinc'

dcl-ds theTable extname('T150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T150 LIMIT 1;

theCharVar = 'Hello from P4522';
dsply theCharVar;
callp localProc();
P2741();
P4070();
P2967();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4522 in the procedure';
end-proc;