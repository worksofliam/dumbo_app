**free

ctl-opt dftactgrp(*no);

dcl-pi P3578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1319.rpgleinc'
/copy 'qrpgleref/P1354.rpgleinc'
/copy 'qrpgleref/P873.rpgleinc'

dcl-ds T247 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T247 FROM T247 LIMIT 1;

theCharVar = 'Hello from P3578';
dsply theCharVar;
callp localProc();
P1319();
P1354();
P873();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3578 in the procedure';
end-proc;