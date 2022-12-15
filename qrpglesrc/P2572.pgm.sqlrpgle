**free

ctl-opt dftactgrp(*no);

dcl-pi P2572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P1680.rpgleinc'
/copy 'qrpgleref/P1436.rpgleinc'

dcl-ds theTable extname('T957') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T957 LIMIT 1;

theCharVar = 'Hello from P2572';
dsply theCharVar;
P122();
P1680();
P1436();
return;