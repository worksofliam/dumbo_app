**free

ctl-opt dftactgrp(*no);

dcl-pi P3328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P991.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P3101.rpgleinc'

dcl-ds theTable extname('T583') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T583 LIMIT 1;

theCharVar = 'Hello from P3328';
dsply theCharVar;
callp localProc();
P991();
P410();
P3101();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3328 in the procedure';
end-proc;