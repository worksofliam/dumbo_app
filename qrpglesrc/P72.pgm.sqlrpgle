**free

ctl-opt dftactgrp(*no);

dcl-pi P72;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds T112 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T112 FROM T112 LIMIT 1;

theCharVar = 'Hello from P72';
dsply theCharVar;
callp localProc();
P47();
P23();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P72 in the procedure';
end-proc;