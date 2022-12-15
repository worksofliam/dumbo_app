**free

ctl-opt dftactgrp(*no);

dcl-pi P2237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'

dcl-ds T1361 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1361 FROM T1361 LIMIT 1;

theCharVar = 'Hello from P2237';
dsply theCharVar;
callp localProc();
P131();
P579();
P111();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2237 in the procedure';
end-proc;