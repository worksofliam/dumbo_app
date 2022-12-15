**free

ctl-opt dftactgrp(*no);

dcl-pi P2792;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1115.rpgleinc'
/copy 'qrpgleref/P2111.rpgleinc'
/copy 'qrpgleref/P2708.rpgleinc'

dcl-ds theTable extname('T1542') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1542 LIMIT 1;

theCharVar = 'Hello from P2792';
dsply theCharVar;
P1115();
P2111();
P2708();
return;