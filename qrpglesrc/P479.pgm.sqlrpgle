**free

ctl-opt dftactgrp(*no);

dcl-pi P479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T454') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T454 LIMIT 1;

theCharVar = 'Hello from P479';
dsply theCharVar;
P444();
P314();
P39();
return;