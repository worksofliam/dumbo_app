**free

ctl-opt dftactgrp(*no);

dcl-pi P2522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2495.rpgleinc'
/copy 'qrpgleref/P1158.rpgleinc'
/copy 'qrpgleref/P1265.rpgleinc'

dcl-ds theTable extname('T528') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T528 LIMIT 1;

theCharVar = 'Hello from P2522';
dsply theCharVar;
P2495();
P1158();
P1265();
return;