**free

ctl-opt dftactgrp(*no);

dcl-pi P503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'

dcl-ds theTable extname('T237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T237 LIMIT 1;

theCharVar = 'Hello from P503';
dsply theCharVar;
callp localProc();
P398();
P91();
P77();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P503 in the procedure';
end-proc;