**free

ctl-opt dftactgrp(*no);

dcl-pi P1576;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P846.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'

dcl-ds T763 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T763 FROM T763 LIMIT 1;

theCharVar = 'Hello from P1576';
dsply theCharVar;
callp localProc();
P846();
P288();
P858();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1576 in the procedure';
end-proc;