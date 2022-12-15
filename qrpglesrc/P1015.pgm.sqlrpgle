**free

ctl-opt dftactgrp(*no);

dcl-pi P1015;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P968.rpgleinc'

dcl-ds theTable extname('T379') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T379 LIMIT 1;

theCharVar = 'Hello from P1015';
dsply theCharVar;
callp localProc();
P46();
P56();
P968();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1015 in the procedure';
end-proc;