**free

ctl-opt dftactgrp(*no);

dcl-pi P1454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1437.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'
/copy 'qrpgleref/P1393.rpgleinc'

dcl-ds T180 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T180 FROM T180 LIMIT 1;

theCharVar = 'Hello from P1454';
dsply theCharVar;
callp localProc();
P1437();
P858();
P1393();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1454 in the procedure';
end-proc;