**free

ctl-opt dftactgrp(*no);

dcl-pi P1332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P724.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'

dcl-ds theTable extname('T220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T220 LIMIT 1;

theCharVar = 'Hello from P1332';
dsply theCharVar;
callp localProc();
P632();
P724();
P214();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1332 in the procedure';
end-proc;