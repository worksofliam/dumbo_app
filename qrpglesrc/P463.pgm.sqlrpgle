**free

ctl-opt dftactgrp(*no);

dcl-pi P463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'

dcl-ds T80 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T80 FROM T80 LIMIT 1;

theCharVar = 'Hello from P463';
dsply theCharVar;
callp localProc();
P131();
P323();
P251();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P463 in the procedure';
end-proc;