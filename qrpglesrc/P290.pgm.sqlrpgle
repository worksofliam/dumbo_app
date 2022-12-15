**free

ctl-opt dftactgrp(*no);

dcl-pi P290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds theTable extname('T251') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T251 LIMIT 1;

theCharVar = 'Hello from P290';
dsply theCharVar;
callp localProc();
P168();
P21();
P173();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P290 in the procedure';
end-proc;