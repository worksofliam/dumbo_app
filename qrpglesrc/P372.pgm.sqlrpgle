**free

ctl-opt dftactgrp(*no);

dcl-pi P372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds theTable extname('T1090') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1090 LIMIT 1;

theCharVar = 'Hello from P372';
dsply theCharVar;
P123();
P103();
P172();
return;