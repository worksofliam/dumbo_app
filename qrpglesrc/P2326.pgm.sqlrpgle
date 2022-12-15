**free

ctl-opt dftactgrp(*no);

dcl-pi P2326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1453.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P2151.rpgleinc'

dcl-ds T219 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T219 FROM T219 LIMIT 1;

theCharVar = 'Hello from P2326';
dsply theCharVar;
callp localProc();
P1453();
P142();
P2151();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2326 in the procedure';
end-proc;