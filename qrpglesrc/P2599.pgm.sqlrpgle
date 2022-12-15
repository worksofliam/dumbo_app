**free

ctl-opt dftactgrp(*no);

dcl-pi P2599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1464.rpgleinc'
/copy 'qrpgleref/P2565.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'

dcl-ds T1599 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1599 FROM T1599 LIMIT 1;

theCharVar = 'Hello from P2599';
dsply theCharVar;
callp localProc();
P1464();
P2565();
P729();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2599 in the procedure';
end-proc;