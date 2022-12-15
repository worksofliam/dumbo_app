**free

ctl-opt dftactgrp(*no);

dcl-pi P2883;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2878.rpgleinc'
/copy 'qrpgleref/P1264.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'

dcl-ds theTable extname('T347') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T347 LIMIT 1;

theCharVar = 'Hello from P2883';
dsply theCharVar;
P2878();
P1264();
P507();
return;