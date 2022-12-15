**free

ctl-opt dftactgrp(*no);

dcl-pi P2871;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1801.rpgleinc'
/copy 'qrpgleref/P1921.rpgleinc'
/copy 'qrpgleref/P1690.rpgleinc'

dcl-ds T1406 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1406 FROM T1406 LIMIT 1;

theCharVar = 'Hello from P2871';
dsply theCharVar;
callp localProc();
P1801();
P1921();
P1690();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2871 in the procedure';
end-proc;