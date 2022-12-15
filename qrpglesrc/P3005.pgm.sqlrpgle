**free

ctl-opt dftactgrp(*no);

dcl-pi P3005;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1204.rpgleinc'
/copy 'qrpgleref/P1875.rpgleinc'
/copy 'qrpgleref/P2369.rpgleinc'

dcl-ds theTable extname('T290') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T290 LIMIT 1;

theCharVar = 'Hello from P3005';
dsply theCharVar;
P1204();
P1875();
P2369();
return;