**free

ctl-opt dftactgrp(*no);

dcl-pi P2330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1792.rpgleinc'
/copy 'qrpgleref/P1733.rpgleinc'
/copy 'qrpgleref/P1449.rpgleinc'

dcl-ds theTable extname('T196') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T196 LIMIT 1;

theCharVar = 'Hello from P2330';
dsply theCharVar;
P1792();
P1733();
P1449();
return;