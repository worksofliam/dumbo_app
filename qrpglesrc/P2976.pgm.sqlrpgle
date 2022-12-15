**free

ctl-opt dftactgrp(*no);

dcl-pi P2976;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1127.rpgleinc'
/copy 'qrpgleref/P1465.rpgleinc'
/copy 'qrpgleref/P2370.rpgleinc'

dcl-ds T948 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T948 FROM T948 LIMIT 1;

theCharVar = 'Hello from P2976';
dsply theCharVar;
callp localProc();
P1127();
P1465();
P2370();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2976 in the procedure';
end-proc;