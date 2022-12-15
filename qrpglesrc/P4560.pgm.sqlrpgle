**free

ctl-opt dftactgrp(*no);

dcl-pi P4560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1552.rpgleinc'
/copy 'qrpgleref/P1072.rpgleinc'
/copy 'qrpgleref/P2178.rpgleinc'

dcl-ds T487 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T487 FROM T487 LIMIT 1;

theCharVar = 'Hello from P4560';
dsply theCharVar;
callp localProc();
P1552();
P1072();
P2178();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4560 in the procedure';
end-proc;