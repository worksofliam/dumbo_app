**free

ctl-opt dftactgrp(*no);

dcl-pi P3894;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2519.rpgleinc'
/copy 'qrpgleref/P2140.rpgleinc'
/copy 'qrpgleref/P1291.rpgleinc'

dcl-ds theTable extname('T750') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T750 LIMIT 1;

theCharVar = 'Hello from P3894';
dsply theCharVar;
callp localProc();
P2519();
P2140();
P1291();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3894 in the procedure';
end-proc;