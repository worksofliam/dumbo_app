**free

ctl-opt dftactgrp(*no);

dcl-pi P2918;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P721.rpgleinc'
/copy 'qrpgleref/P713.rpgleinc'

dcl-ds theTable extname('T1193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1193 LIMIT 1;

theCharVar = 'Hello from P2918';
dsply theCharVar;
P41();
P721();
P713();
return;