**free

ctl-opt dftactgrp(*no);

dcl-pi P3495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2040.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P3029.rpgleinc'

dcl-ds theTable extname('T260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T260 LIMIT 1;

theCharVar = 'Hello from P3495';
dsply theCharVar;
P2040();
P213();
P3029();
return;