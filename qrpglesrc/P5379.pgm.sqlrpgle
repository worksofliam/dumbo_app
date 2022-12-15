**free

ctl-opt dftactgrp(*no);

dcl-pi P5379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2227.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'
/copy 'qrpgleref/P3280.rpgleinc'

dcl-ds theTable extname('T1762') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1762 LIMIT 1;

theCharVar = 'Hello from P5379';
dsply theCharVar;
P2227();
P551();
P3280();
return;