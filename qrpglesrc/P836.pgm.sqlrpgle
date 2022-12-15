**free

ctl-opt dftactgrp(*no);

dcl-pi P836;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P800.rpgleinc'

dcl-ds theTable extname('T180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T180 LIMIT 1;

theCharVar = 'Hello from P836';
dsply theCharVar;
callp localProc();
P135();
P687();
P800();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P836 in the procedure';
end-proc;