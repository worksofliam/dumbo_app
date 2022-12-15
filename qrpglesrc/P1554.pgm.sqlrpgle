**free

ctl-opt dftactgrp(*no);

dcl-pi P1554;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P792.rpgleinc'

dcl-ds theTable extname('T883') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T883 LIMIT 1;

theCharVar = 'Hello from P1554';
dsply theCharVar;
P30();
P72();
P792();
return;