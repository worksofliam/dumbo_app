**free

ctl-opt dftactgrp(*no);

dcl-pi P443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'

dcl-ds theTable extname('T50') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T50 LIMIT 1;

theCharVar = 'Hello from P443';
dsply theCharVar;
P135();
P211();
P254();
return;