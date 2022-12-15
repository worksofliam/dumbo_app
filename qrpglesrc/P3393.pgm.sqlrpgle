**free

ctl-opt dftactgrp(*no);

dcl-pi P3393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2207.rpgleinc'
/copy 'qrpgleref/P2332.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'

dcl-ds theTable extname('T449') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T449 LIMIT 1;

theCharVar = 'Hello from P3393';
dsply theCharVar;
callp localProc();
P2207();
P2332();
P371();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3393 in the procedure';
end-proc;