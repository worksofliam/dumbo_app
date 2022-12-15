**free

ctl-opt dftactgrp(*no);

dcl-pi P5309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P719.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P660.rpgleinc'

dcl-ds theTable extname('T971') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T971 LIMIT 1;

theCharVar = 'Hello from P5309';
dsply theCharVar;
P719();
P132();
P660();
return;