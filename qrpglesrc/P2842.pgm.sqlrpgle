**free

ctl-opt dftactgrp(*no);

dcl-pi P2842;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P933.rpgleinc'
/copy 'qrpgleref/P2343.rpgleinc'
/copy 'qrpgleref/P2437.rpgleinc'

dcl-ds T822 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T822 FROM T822 LIMIT 1;

theCharVar = 'Hello from P2842';
dsply theCharVar;
callp localProc();
P933();
P2343();
P2437();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2842 in the procedure';
end-proc;