**free

ctl-opt dftactgrp(*no);

dcl-pi P2097;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P907.rpgleinc'

dcl-ds theTable extname('T989') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T989 LIMIT 1;

theCharVar = 'Hello from P2097';
dsply theCharVar;
P198();
P96();
P907();
return;