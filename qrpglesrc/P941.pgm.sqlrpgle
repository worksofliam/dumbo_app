**free

ctl-opt dftactgrp(*no);

dcl-pi P941;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P938.rpgleinc'

dcl-ds theTable extname('T468') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T468 LIMIT 1;

theCharVar = 'Hello from P941';
dsply theCharVar;
P219();
P52();
P938();
return;