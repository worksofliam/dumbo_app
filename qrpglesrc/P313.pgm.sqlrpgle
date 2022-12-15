**free

ctl-opt dftactgrp(*no);

dcl-pi P313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds theTable extname('T160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T160 LIMIT 1;

theCharVar = 'Hello from P313';
dsply theCharVar;
P46();
P17();
P198();
return;