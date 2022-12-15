**free

ctl-opt dftactgrp(*no);

dcl-pi P5123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1480.rpgleinc'
/copy 'qrpgleref/P1930.rpgleinc'
/copy 'qrpgleref/P4102.rpgleinc'

dcl-ds theTable extname('T111') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T111 LIMIT 1;

theCharVar = 'Hello from P5123';
dsply theCharVar;
P1480();
P1930();
P4102();
return;