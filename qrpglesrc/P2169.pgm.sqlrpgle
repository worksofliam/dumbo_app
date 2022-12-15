**free

ctl-opt dftactgrp(*no);

dcl-pi P2169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1475.rpgleinc'
/copy 'qrpgleref/P1393.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'

dcl-ds T489 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T489 FROM T489 LIMIT 1;

theCharVar = 'Hello from P2169';
dsply theCharVar;
callp localProc();
P1475();
P1393();
P254();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2169 in the procedure';
end-proc;