**free

ctl-opt dftactgrp(*no);

dcl-pi P1406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P1082.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'

dcl-ds T422 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T422 FROM T422 LIMIT 1;

theCharVar = 'Hello from P1406';
dsply theCharVar;
callp localProc();
P187();
P1082();
P344();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1406 in the procedure';
end-proc;