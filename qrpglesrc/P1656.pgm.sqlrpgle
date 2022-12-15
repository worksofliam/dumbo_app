**free

ctl-opt dftactgrp(*no);

dcl-pi P1656;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1348.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P1426.rpgleinc'

dcl-ds theTable extname('T871') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T871 LIMIT 1;

theCharVar = 'Hello from P1656';
dsply theCharVar;
P1348();
P538();
P1426();
return;