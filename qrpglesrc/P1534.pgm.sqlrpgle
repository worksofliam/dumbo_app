**free

ctl-opt dftactgrp(*no);

dcl-pi P1534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1466.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'

dcl-ds theTable extname('T1427') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1427 LIMIT 1;

theCharVar = 'Hello from P1534';
dsply theCharVar;
P1466();
P292();
P311();
return;