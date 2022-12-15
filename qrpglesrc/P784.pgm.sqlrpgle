**free

ctl-opt dftactgrp(*no);

dcl-pi P784;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds theTable extname('T215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T215 LIMIT 1;

theCharVar = 'Hello from P784';
dsply theCharVar;
callp localProc();
P420();
P125();
P173();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P784 in the procedure';
end-proc;