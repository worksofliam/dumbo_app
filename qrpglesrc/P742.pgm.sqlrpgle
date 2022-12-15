**free

ctl-opt dftactgrp(*no);

dcl-pi P742;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'

dcl-ds theTable extname('T14') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T14 LIMIT 1;

theCharVar = 'Hello from P742';
dsply theCharVar;
callp localProc();
P52();
P502();
P441();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P742 in the procedure';
end-proc;