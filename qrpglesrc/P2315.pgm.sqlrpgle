**free

ctl-opt dftactgrp(*no);

dcl-pi P2315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2224.rpgleinc'
/copy 'qrpgleref/P1787.rpgleinc'
/copy 'qrpgleref/P835.rpgleinc'

dcl-ds theTable extname('T730') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T730 LIMIT 1;

theCharVar = 'Hello from P2315';
dsply theCharVar;
P2224();
P1787();
P835();
return;