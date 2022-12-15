**free

ctl-opt dftactgrp(*no);

dcl-pi P3681;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1931.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P894.rpgleinc'

dcl-ds theTable extname('T864') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T864 LIMIT 1;

theCharVar = 'Hello from P3681';
dsply theCharVar;
P1931();
P385();
P894();
return;