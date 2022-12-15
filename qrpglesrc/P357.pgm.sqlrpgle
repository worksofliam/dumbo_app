**free

ctl-opt dftactgrp(*no);

dcl-pi P357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds theTable extname('T273') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T273 LIMIT 1;

theCharVar = 'Hello from P357';
dsply theCharVar;
P99();
P198();
P94();
return;