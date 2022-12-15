**free

ctl-opt dftactgrp(*no);

dcl-pi P3527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P2769.rpgleinc'
/copy 'qrpgleref/P1835.rpgleinc'

dcl-ds T879 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T879 FROM T879 LIMIT 1;

theCharVar = 'Hello from P3527';
dsply theCharVar;
callp localProc();
P627();
P2769();
P1835();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3527 in the procedure';
end-proc;