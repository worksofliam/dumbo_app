**free

ctl-opt dftactgrp(*no);

dcl-pi P551;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds theTable extname('T429') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T429 LIMIT 1;

theCharVar = 'Hello from P551';
dsply theCharVar;
P525();
P294();
P85();
return;