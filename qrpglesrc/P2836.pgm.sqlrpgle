**free

ctl-opt dftactgrp(*no);

dcl-pi P2836;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1584.rpgleinc'
/copy 'qrpgleref/P782.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'

dcl-ds theTable extname('T807') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T807 LIMIT 1;

theCharVar = 'Hello from P2836';
dsply theCharVar;
P1584();
P782();
P851();
return;