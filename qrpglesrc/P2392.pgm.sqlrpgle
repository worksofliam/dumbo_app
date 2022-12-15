**free

ctl-opt dftactgrp(*no);

dcl-pi P2392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2133.rpgleinc'
/copy 'qrpgleref/P2366.rpgleinc'
/copy 'qrpgleref/P388.rpgleinc'

dcl-ds T282 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T282 FROM T282 LIMIT 1;

theCharVar = 'Hello from P2392';
dsply theCharVar;
callp localProc();
P2133();
P2366();
P388();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2392 in the procedure';
end-proc;