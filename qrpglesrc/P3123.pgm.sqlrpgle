**free

ctl-opt dftactgrp(*no);

dcl-pi P3123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P2360.rpgleinc'
/copy 'qrpgleref/P2758.rpgleinc'

dcl-ds theTable extname('T661') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T661 LIMIT 1;

theCharVar = 'Hello from P3123';
dsply theCharVar;
callp localProc();
P371();
P2360();
P2758();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3123 in the procedure';
end-proc;