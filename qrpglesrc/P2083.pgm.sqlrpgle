**free

ctl-opt dftactgrp(*no);

dcl-pi P2083;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1263.rpgleinc'
/copy 'qrpgleref/P1782.rpgleinc'
/copy 'qrpgleref/P1840.rpgleinc'

dcl-ds theTable extname('T649') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T649 LIMIT 1;

theCharVar = 'Hello from P2083';
dsply theCharVar;
P1263();
P1782();
P1840();
return;