**free

ctl-opt dftactgrp(*no);

dcl-pi P1898;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P834.rpgleinc'
/copy 'qrpgleref/P1366.rpgleinc'
/copy 'qrpgleref/P666.rpgleinc'

dcl-ds theTable extname('T870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T870 LIMIT 1;

theCharVar = 'Hello from P1898';
dsply theCharVar;
callp localProc();
P834();
P1366();
P666();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1898 in the procedure';
end-proc;