**free

ctl-opt dftactgrp(*no);

dcl-pi P2108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1152.rpgleinc'
/copy 'qrpgleref/P1344.rpgleinc'
/copy 'qrpgleref/P1288.rpgleinc'

dcl-ds theTable extname('T464') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T464 LIMIT 1;

theCharVar = 'Hello from P2108';
dsply theCharVar;
P1152();
P1344();
P1288();
return;