**free

ctl-opt dftactgrp(*no);

dcl-pi P1311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P677.rpgleinc'
/copy 'qrpgleref/P749.rpgleinc'

dcl-ds theTable extname('T416') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T416 LIMIT 1;

theCharVar = 'Hello from P1311';
dsply theCharVar;
callp localProc();
P277();
P677();
P749();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1311 in the procedure';
end-proc;