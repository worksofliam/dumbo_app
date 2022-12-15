**free

ctl-opt dftactgrp(*no);

dcl-pi P3300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P2653.rpgleinc'
/copy 'qrpgleref/P1126.rpgleinc'

dcl-ds T1137 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1137 FROM T1137 LIMIT 1;

theCharVar = 'Hello from P3300';
dsply theCharVar;
callp localProc();
P278();
P2653();
P1126();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3300 in the procedure';
end-proc;