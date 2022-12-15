**free

ctl-opt dftactgrp(*no);

dcl-pi P896;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'
/copy 'qrpgleref/P847.rpgleinc'

dcl-ds T837 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T837 FROM T837 LIMIT 1;

theCharVar = 'Hello from P896';
dsply theCharVar;
callp localProc();
P153();
P569();
P847();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P896 in the procedure';
end-proc;