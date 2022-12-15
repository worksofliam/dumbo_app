**free

ctl-opt dftactgrp(*no);

dcl-pi P1151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P1097.rpgleinc'
/copy 'qrpgleref/P791.rpgleinc'

dcl-ds T213 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T213 FROM T213 LIMIT 1;

theCharVar = 'Hello from P1151';
dsply theCharVar;
callp localProc();
P288();
P1097();
P791();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1151 in the procedure';
end-proc;