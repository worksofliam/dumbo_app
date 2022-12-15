**free

ctl-opt dftactgrp(*no);

dcl-pi P2089;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P951.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P1470.rpgleinc'

dcl-ds theTable extname('T46') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T46 LIMIT 1;

theCharVar = 'Hello from P2089';
dsply theCharVar;
P951();
P82();
P1470();
return;