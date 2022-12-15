**free

ctl-opt dftactgrp(*no);

dcl-pi P3328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2549.rpgleinc'
/copy 'qrpgleref/P2474.rpgleinc'
/copy 'qrpgleref/P3040.rpgleinc'

dcl-ds theTable extname('T447') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T447 LIMIT 1;

theCharVar = 'Hello from P3328';
dsply theCharVar;
P2549();
P2474();
P3040();
return;