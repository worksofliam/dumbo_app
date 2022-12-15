**free

ctl-opt dftactgrp(*no);

dcl-pi P5095;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2297.rpgleinc'
/copy 'qrpgleref/P988.rpgleinc'
/copy 'qrpgleref/P3599.rpgleinc'

dcl-ds theTable extname('T1580') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1580 LIMIT 1;

theCharVar = 'Hello from P5095';
dsply theCharVar;
P2297();
P988();
P3599();
return;