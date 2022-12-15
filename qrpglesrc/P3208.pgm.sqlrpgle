**free

ctl-opt dftactgrp(*no);

dcl-pi P3208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1262.rpgleinc'
/copy 'qrpgleref/P2801.rpgleinc'
/copy 'qrpgleref/P1780.rpgleinc'

dcl-ds theTable extname('T1239') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1239 LIMIT 1;

theCharVar = 'Hello from P3208';
dsply theCharVar;
P1262();
P2801();
P1780();
return;