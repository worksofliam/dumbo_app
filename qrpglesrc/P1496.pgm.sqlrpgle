**free

ctl-opt dftactgrp(*no);

dcl-pi P1496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'

dcl-ds T585 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T585 FROM T585 LIMIT 1;

theCharVar = 'Hello from P1496';
dsply theCharVar;
callp localProc();
P438();
P131();
P736();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1496 in the procedure';
end-proc;