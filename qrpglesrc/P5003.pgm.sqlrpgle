**free

ctl-opt dftactgrp(*no);

dcl-pi P5003;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2679.rpgleinc'
/copy 'qrpgleref/P1457.rpgleinc'
/copy 'qrpgleref/P1205.rpgleinc'

dcl-ds theTable extname('T828') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T828 LIMIT 1;

theCharVar = 'Hello from P5003';
dsply theCharVar;
P2679();
P1457();
P1205();
return;