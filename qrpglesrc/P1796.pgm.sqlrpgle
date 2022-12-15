**free

ctl-opt dftactgrp(*no);

dcl-pi P1796;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P1645.rpgleinc'
/copy 'qrpgleref/P801.rpgleinc'

dcl-ds theTable extname('T190') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T190 LIMIT 1;

theCharVar = 'Hello from P1796';
dsply theCharVar;
P298();
P1645();
P801();
return;