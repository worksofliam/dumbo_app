**free

ctl-opt dftactgrp(*no);

dcl-pi P1228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1044.rpgleinc'
/copy 'qrpgleref/P1194.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'

dcl-ds theTable extname('T1237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1237 LIMIT 1;

theCharVar = 'Hello from P1228';
dsply theCharVar;
P1044();
P1194();
P264();
return;