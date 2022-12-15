**free

ctl-opt dftactgrp(*no);

dcl-pi P2353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P2014.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'

dcl-ds theTable extname('T1457') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1457 LIMIT 1;

theCharVar = 'Hello from P2353';
dsply theCharVar;
P797();
P2014();
P352();
return;