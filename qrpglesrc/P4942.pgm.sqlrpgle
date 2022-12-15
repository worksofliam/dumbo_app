**free

ctl-opt dftactgrp(*no);

dcl-pi P4942;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1151.rpgleinc'
/copy 'qrpgleref/P2029.rpgleinc'
/copy 'qrpgleref/P4317.rpgleinc'

dcl-ds T847 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T847 FROM T847 LIMIT 1;

theCharVar = 'Hello from P4942';
dsply theCharVar;
callp localProc();
P1151();
P2029();
P4317();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4942 in the procedure';
end-proc;