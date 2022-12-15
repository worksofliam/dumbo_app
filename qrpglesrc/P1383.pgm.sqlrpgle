**free

ctl-opt dftactgrp(*no);

dcl-pi P1383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P808.rpgleinc'
/copy 'qrpgleref/P1278.rpgleinc'
/copy 'qrpgleref/P514.rpgleinc'

dcl-ds T974 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T974 FROM T974 LIMIT 1;

theCharVar = 'Hello from P1383';
dsply theCharVar;
callp localProc();
P808();
P1278();
P514();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1383 in the procedure';
end-proc;