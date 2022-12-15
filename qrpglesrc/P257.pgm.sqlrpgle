**free

ctl-opt dftactgrp(*no);

dcl-pi P257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'

dcl-ds T412 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T412 FROM T412 LIMIT 1;

theCharVar = 'Hello from P257';
dsply theCharVar;
callp localProc();
P235();
P237();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P257 in the procedure';
end-proc;