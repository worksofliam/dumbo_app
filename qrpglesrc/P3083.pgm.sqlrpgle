**free

ctl-opt dftactgrp(*no);

dcl-pi P3083;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2645.rpgleinc'
/copy 'qrpgleref/P2431.rpgleinc'
/copy 'qrpgleref/P2237.rpgleinc'

dcl-ds theTable extname('T870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T870 LIMIT 1;

theCharVar = 'Hello from P3083';
dsply theCharVar;
P2645();
P2431();
P2237();
return;