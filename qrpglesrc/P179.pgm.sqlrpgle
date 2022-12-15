**free

ctl-opt dftactgrp(*no);

dcl-pi P179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds theTable extname('T152') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T152 LIMIT 1;

theCharVar = 'Hello from P179';
dsply theCharVar;
callp localProc();
P56();
P93();
P110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P179 in the procedure';
end-proc;