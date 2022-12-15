**free

ctl-opt dftactgrp(*no);

dcl-pi P1270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P655.rpgleinc'
/copy 'qrpgleref/P692.rpgleinc'
/copy 'qrpgleref/P1080.rpgleinc'

dcl-ds theTable extname('T907') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T907 LIMIT 1;

theCharVar = 'Hello from P1270';
dsply theCharVar;
P655();
P692();
P1080();
return;