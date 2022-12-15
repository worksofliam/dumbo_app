**free

ctl-opt dftactgrp(*no);

dcl-pi P2409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1005.rpgleinc'
/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P2051.rpgleinc'

dcl-ds T569 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T569 FROM T569 LIMIT 1;

theCharVar = 'Hello from P2409';
dsply theCharVar;
callp localProc();
P1005();
P876();
P2051();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2409 in the procedure';
end-proc;