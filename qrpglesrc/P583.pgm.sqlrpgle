**free

ctl-opt dftactgrp(*no);

dcl-pi P583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'

dcl-ds T872 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T872 FROM T872 LIMIT 1;

theCharVar = 'Hello from P583';
dsply theCharVar;
callp localProc();
P137();
P142();
P579();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P583 in the procedure';
end-proc;