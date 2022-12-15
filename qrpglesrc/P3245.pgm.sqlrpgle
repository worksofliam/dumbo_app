**free

ctl-opt dftactgrp(*no);

dcl-pi P3245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1834.rpgleinc'
/copy 'qrpgleref/P1737.rpgleinc'
/copy 'qrpgleref/P3083.rpgleinc'

dcl-ds theTable extname('T150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T150 LIMIT 1;

theCharVar = 'Hello from P3245';
dsply theCharVar;
P1834();
P1737();
P3083();
return;