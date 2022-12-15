**free

ctl-opt dftactgrp(*no);

dcl-pi P3299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P667.rpgleinc'
/copy 'qrpgleref/P2684.rpgleinc'
/copy 'qrpgleref/P2956.rpgleinc'

dcl-ds theTable extname('T814') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T814 LIMIT 1;

theCharVar = 'Hello from P3299';
dsply theCharVar;
P667();
P2684();
P2956();
return;