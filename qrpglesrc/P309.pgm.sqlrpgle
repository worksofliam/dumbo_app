**free

ctl-opt dftactgrp(*no);

dcl-pi P309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'

dcl-ds T713 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T713 FROM T713 LIMIT 1;

theCharVar = 'Hello from P309';
dsply theCharVar;
callp localProc();
P111();
P303();
P159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P309 in the procedure';
end-proc;