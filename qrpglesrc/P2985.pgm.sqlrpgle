**free

ctl-opt dftactgrp(*no);

dcl-pi P2985;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1387.rpgleinc'
/copy 'qrpgleref/P2510.rpgleinc'
/copy 'qrpgleref/P843.rpgleinc'

dcl-ds theTable extname('T958') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T958 LIMIT 1;

theCharVar = 'Hello from P2985';
dsply theCharVar;
P1387();
P2510();
P843();
return;