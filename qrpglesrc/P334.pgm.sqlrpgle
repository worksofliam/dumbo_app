**free

ctl-opt dftactgrp(*no);

dcl-pi P334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds T294 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T294 FROM T294 LIMIT 1;

theCharVar = 'Hello from P334';
dsply theCharVar;
callp localProc();
P166();
P175();
P56();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P334 in the procedure';
end-proc;