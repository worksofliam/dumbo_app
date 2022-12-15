**free

ctl-opt dftactgrp(*no);

dcl-pi P909;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P528.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'

dcl-ds theTable extname('T636') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T636 LIMIT 1;

theCharVar = 'Hello from P909';
dsply theCharVar;
P528();
P479();
P189();
return;