**free

ctl-opt dftactgrp(*no);

dcl-pi P2263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1580.rpgleinc'
/copy 'qrpgleref/P2242.rpgleinc'
/copy 'qrpgleref/P1765.rpgleinc'

dcl-ds theTable extname('T376') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T376 LIMIT 1;

theCharVar = 'Hello from P2263';
dsply theCharVar;
P1580();
P2242();
P1765();
return;