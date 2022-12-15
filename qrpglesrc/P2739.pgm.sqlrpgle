**free

ctl-opt dftactgrp(*no);

dcl-pi P2739;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1031.rpgleinc'
/copy 'qrpgleref/P2548.rpgleinc'
/copy 'qrpgleref/P2502.rpgleinc'

dcl-ds theTable extname('T452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T452 LIMIT 1;

theCharVar = 'Hello from P2739';
dsply theCharVar;
callp localProc();
P1031();
P2548();
P2502();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2739 in the procedure';
end-proc;