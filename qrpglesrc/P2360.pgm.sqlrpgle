**free

ctl-opt dftactgrp(*no);

dcl-pi P2360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1980.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P1448.rpgleinc'

dcl-ds T493 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T493 FROM T493 LIMIT 1;

theCharVar = 'Hello from P2360';
dsply theCharVar;
callp localProc();
P1980();
P277();
P1448();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2360 in the procedure';
end-proc;