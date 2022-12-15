**free

ctl-opt dftactgrp(*no);

dcl-pi P2584;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P447.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'

dcl-ds theTable extname('T878') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T878 LIMIT 1;

theCharVar = 'Hello from P2584';
dsply theCharVar;
P499();
P447();
P929();
return;