**free

ctl-opt dftactgrp(*no);

dcl-pi P5037;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2627.rpgleinc'
/copy 'qrpgleref/P2225.rpgleinc'
/copy 'qrpgleref/P3184.rpgleinc'

dcl-ds theTable extname('T139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T139 LIMIT 1;

theCharVar = 'Hello from P5037';
dsply theCharVar;
P2627();
P2225();
P3184();
return;