**free

ctl-opt dftactgrp(*no);

dcl-pi P512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'

dcl-ds T719 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T719 FROM T719 LIMIT 1;

theCharVar = 'Hello from P512';
dsply theCharVar;
callp localProc();
P309();
P1();
P131();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P512 in the procedure';
end-proc;