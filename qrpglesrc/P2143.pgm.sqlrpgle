**free

ctl-opt dftactgrp(*no);

dcl-pi P2143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P731.rpgleinc'
/copy 'qrpgleref/P676.rpgleinc'

dcl-ds theTable extname('T929') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T929 LIMIT 1;

theCharVar = 'Hello from P2143';
dsply theCharVar;
P179();
P731();
P676();
return;