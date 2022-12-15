**free

ctl-opt dftactgrp(*no);

dcl-pi P2347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2062.rpgleinc'
/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P1594.rpgleinc'

dcl-ds T511 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T511 FROM T511 LIMIT 1;

theCharVar = 'Hello from P2347';
dsply theCharVar;
callp localProc();
P2062();
P876();
P1594();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2347 in the procedure';
end-proc;