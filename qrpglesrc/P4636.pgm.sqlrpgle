**free

ctl-opt dftactgrp(*no);

dcl-pi P4636;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4627.rpgleinc'
/copy 'qrpgleref/P1865.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'

dcl-ds T494 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T494 FROM T494 LIMIT 1;

theCharVar = 'Hello from P4636';
dsply theCharVar;
callp localProc();
P4627();
P1865();
P142();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4636 in the procedure';
end-proc;