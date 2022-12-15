**free

ctl-opt dftactgrp(*no);

dcl-pi P3857;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3515.rpgleinc'
/copy 'qrpgleref/P2830.rpgleinc'
/copy 'qrpgleref/P2417.rpgleinc'

dcl-ds theTable extname('T1200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1200 LIMIT 1;

theCharVar = 'Hello from P3857';
dsply theCharVar;
P3515();
P2830();
P2417();
return;