**free

ctl-opt dftactgrp(*no);

dcl-pi P1393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P1330.rpgleinc'
/copy 'qrpgleref/P1275.rpgleinc'

dcl-ds theTable extname('T1055') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1055 LIMIT 1;

theCharVar = 'Hello from P1393';
dsply theCharVar;
P700();
P1330();
P1275();
return;