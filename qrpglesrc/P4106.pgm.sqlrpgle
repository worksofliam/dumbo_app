**free

ctl-opt dftactgrp(*no);

dcl-pi P4106;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1016.rpgleinc'
/copy 'qrpgleref/P2628.rpgleinc'
/copy 'qrpgleref/P3165.rpgleinc'

dcl-ds theTable extname('T904') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T904 LIMIT 1;

theCharVar = 'Hello from P4106';
dsply theCharVar;
callp localProc();
P1016();
P2628();
P3165();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4106 in the procedure';
end-proc;