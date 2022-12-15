**free

ctl-opt dftactgrp(*no);

dcl-pi P3169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P1911.rpgleinc'

dcl-ds theTable extname('T308') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T308 LIMIT 1;

theCharVar = 'Hello from P3169';
dsply theCharVar;
P233();
P563();
P1911();
return;