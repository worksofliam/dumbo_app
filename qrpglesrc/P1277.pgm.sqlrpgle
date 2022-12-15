**free

ctl-opt dftactgrp(*no);

dcl-pi P1277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'

dcl-ds theTable extname('T76') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T76 LIMIT 1;

theCharVar = 'Hello from P1277';
dsply theCharVar;
P538();
P460();
P513();
return;