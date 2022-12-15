**free

ctl-opt dftactgrp(*no);

dcl-pi P5443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2286.rpgleinc'
/copy 'qrpgleref/P2809.rpgleinc'
/copy 'qrpgleref/P5396.rpgleinc'

dcl-ds theTable extname('T63') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T63 LIMIT 1;

theCharVar = 'Hello from P5443';
dsply theCharVar;
P2286();
P2809();
P5396();
return;