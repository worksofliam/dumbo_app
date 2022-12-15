**free

ctl-opt dftactgrp(*no);

dcl-pi P1650;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1639.rpgleinc'
/copy 'qrpgleref/P945.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'

dcl-ds theTable extname('T419') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T419 LIMIT 1;

theCharVar = 'Hello from P1650';
dsply theCharVar;
P1639();
P945();
P503();
return;