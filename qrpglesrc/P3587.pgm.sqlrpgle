**free

ctl-opt dftactgrp(*no);

dcl-pi P3587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2645.rpgleinc'
/copy 'qrpgleref/P2867.rpgleinc'
/copy 'qrpgleref/P2000.rpgleinc'

dcl-ds theTable extname('T281') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T281 LIMIT 1;

theCharVar = 'Hello from P3587';
dsply theCharVar;
P2645();
P2867();
P2000();
return;