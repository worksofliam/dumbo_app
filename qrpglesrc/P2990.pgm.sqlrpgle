**free

ctl-opt dftactgrp(*no);

dcl-pi P2990;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1283.rpgleinc'
/copy 'qrpgleref/P2479.rpgleinc'
/copy 'qrpgleref/P2564.rpgleinc'

dcl-ds theTable extname('T1689') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1689 LIMIT 1;

theCharVar = 'Hello from P2990';
dsply theCharVar;
callp localProc();
P1283();
P2479();
P2564();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2990 in the procedure';
end-proc;