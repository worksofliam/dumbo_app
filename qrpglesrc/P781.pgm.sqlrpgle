**free

ctl-opt dftactgrp(*no);

dcl-pi P781;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'

dcl-ds T860 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T860 FROM T860 LIMIT 1;

theCharVar = 'Hello from P781';
dsply theCharVar;
callp localProc();
P196();
P483();
P266();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P781 in the procedure';
end-proc;