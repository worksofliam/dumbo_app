**free

ctl-opt dftactgrp(*no);

dcl-pi P465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'

dcl-ds theTable extname('T932') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T932 LIMIT 1;

theCharVar = 'Hello from P465';
dsply theCharVar;
callp localProc();
P185();
P410();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P465 in the procedure';
end-proc;