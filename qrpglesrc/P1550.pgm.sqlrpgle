**free

ctl-opt dftactgrp(*no);

dcl-pi P1550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P468.rpgleinc'
/copy 'qrpgleref/P1222.rpgleinc'
/copy 'qrpgleref/P1240.rpgleinc'

dcl-ds theTable extname('T822') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T822 LIMIT 1;

theCharVar = 'Hello from P1550';
dsply theCharVar;
P468();
P1222();
P1240();
return;