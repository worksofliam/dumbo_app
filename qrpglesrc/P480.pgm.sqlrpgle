**free

ctl-opt dftactgrp(*no);

dcl-pi P480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'

dcl-ds T924 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T924 FROM T924 LIMIT 1;

theCharVar = 'Hello from P480';
dsply theCharVar;
callp localProc();
P54();
P280();
P131();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P480 in the procedure';
end-proc;