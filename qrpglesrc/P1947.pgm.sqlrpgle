**free

ctl-opt dftactgrp(*no);

dcl-pi P1947;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1406.rpgleinc'
/copy 'qrpgleref/P1274.rpgleinc'
/copy 'qrpgleref/P1309.rpgleinc'

dcl-ds T497 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T497 FROM T497 LIMIT 1;

theCharVar = 'Hello from P1947';
dsply theCharVar;
callp localProc();
P1406();
P1274();
P1309();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1947 in the procedure';
end-proc;