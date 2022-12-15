**free

ctl-opt dftactgrp(*no);

dcl-pi P942;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P676.rpgleinc'
/copy 'qrpgleref/P605.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'

dcl-ds theTable extname('T765') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T765 LIMIT 1;

theCharVar = 'Hello from P942';
dsply theCharVar;
P676();
P605();
P251();
return;