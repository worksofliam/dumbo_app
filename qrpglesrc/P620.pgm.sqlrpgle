**free

ctl-opt dftactgrp(*no);

dcl-pi P620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'

dcl-ds theTable extname('T809') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T809 LIMIT 1;

theCharVar = 'Hello from P620';
dsply theCharVar;
P91();
P62();
P479();
return;