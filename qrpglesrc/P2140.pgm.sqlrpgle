**free

ctl-opt dftactgrp(*no);

dcl-pi P2140;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P1800.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'

dcl-ds theTable extname('T561') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T561 LIMIT 1;

theCharVar = 'Hello from P2140';
dsply theCharVar;
P39();
P1800();
P154();
return;