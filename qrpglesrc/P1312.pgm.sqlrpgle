**free

ctl-opt dftactgrp(*no);

dcl-pi P1312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1288.rpgleinc'
/copy 'qrpgleref/P655.rpgleinc'
/copy 'qrpgleref/P632.rpgleinc'

dcl-ds theTable extname('T483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T483 LIMIT 1;

theCharVar = 'Hello from P1312';
dsply theCharVar;
P1288();
P655();
P632();
return;