**free

ctl-opt dftactgrp(*no);

dcl-pi P309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'

dcl-ds theTable extname('T447') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T447 LIMIT 1;

theCharVar = 'Hello from P309';
dsply theCharVar;
callp localProc();
P46();
P71();
P246();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P309 in the procedure';
end-proc;