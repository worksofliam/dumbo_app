**free

ctl-opt dftactgrp(*no);

dcl-pi P2785;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P2517.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'

dcl-ds T1425 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1425 FROM T1425 LIMIT 1;

theCharVar = 'Hello from P2785';
dsply theCharVar;
callp localProc();
P142();
P2517();
P487();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2785 in the procedure';
end-proc;