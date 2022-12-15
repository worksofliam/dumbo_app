**free

ctl-opt dftactgrp(*no);

dcl-pi P259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'

dcl-ds theTable extname('T246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T246 LIMIT 1;

theCharVar = 'Hello from P259';
dsply theCharVar;
callp localProc();
P20();
P178();
P230();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P259 in the procedure';
end-proc;