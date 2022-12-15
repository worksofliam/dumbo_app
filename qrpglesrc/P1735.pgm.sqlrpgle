**free

ctl-opt dftactgrp(*no);

dcl-pi P1735;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1394.rpgleinc'
/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P964.rpgleinc'

dcl-ds theTable extname('T965') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T965 LIMIT 1;

theCharVar = 'Hello from P1735';
dsply theCharVar;
P1394();
P701();
P964();
return;