**free

ctl-opt dftactgrp(*no);

dcl-pi P187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T864') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T864 LIMIT 1;

theCharVar = 'Hello from P187';
dsply theCharVar;
P176();
P123();
P54();
return;