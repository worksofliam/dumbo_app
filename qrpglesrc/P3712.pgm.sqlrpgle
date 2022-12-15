**free

ctl-opt dftactgrp(*no);

dcl-pi P3712;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2029.rpgleinc'
/copy 'qrpgleref/P3460.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'

dcl-ds theTable extname('T642') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T642 LIMIT 1;

theCharVar = 'Hello from P3712';
dsply theCharVar;
callp localProc();
P2029();
P3460();
P496();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3712 in the procedure';
end-proc;