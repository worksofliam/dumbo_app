**free

ctl-opt dftactgrp(*no);

dcl-pi P2900;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P515.rpgleinc'
/copy 'qrpgleref/P1438.rpgleinc'
/copy 'qrpgleref/P1570.rpgleinc'

dcl-ds T280 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T280 FROM T280 LIMIT 1;

theCharVar = 'Hello from P2900';
dsply theCharVar;
callp localProc();
P515();
P1438();
P1570();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2900 in the procedure';
end-proc;