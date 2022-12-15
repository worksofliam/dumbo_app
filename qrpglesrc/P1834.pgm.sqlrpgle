**free

ctl-opt dftactgrp(*no);

dcl-pi P1834;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P918.rpgleinc'
/copy 'qrpgleref/P788.rpgleinc'
/copy 'qrpgleref/P988.rpgleinc'

dcl-ds T803 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T803 FROM T803 LIMIT 1;

theCharVar = 'Hello from P1834';
dsply theCharVar;
callp localProc();
P918();
P788();
P988();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1834 in the procedure';
end-proc;