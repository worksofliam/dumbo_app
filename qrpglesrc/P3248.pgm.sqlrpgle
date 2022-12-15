**free

ctl-opt dftactgrp(*no);

dcl-pi P3248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2343.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P2809.rpgleinc'

dcl-ds theTable extname('T851') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T851 LIMIT 1;

theCharVar = 'Hello from P3248';
dsply theCharVar;
callp localProc();
P2343();
P410();
P2809();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3248 in the procedure';
end-proc;