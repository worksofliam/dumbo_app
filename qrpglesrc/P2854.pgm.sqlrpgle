**free

ctl-opt dftactgrp(*no);

dcl-pi P2854;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'
/copy 'qrpgleref/P1366.rpgleinc'

dcl-ds T1347 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1347 FROM T1347 LIMIT 1;

theCharVar = 'Hello from P2854';
dsply theCharVar;
callp localProc();
P3();
P551();
P1366();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2854 in the procedure';
end-proc;