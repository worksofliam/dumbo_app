**free

ctl-opt dftactgrp(*no);

dcl-pi P1640;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P515.rpgleinc'
/copy 'qrpgleref/P1556.rpgleinc'
/copy 'qrpgleref/P1061.rpgleinc'

dcl-ds theTable extname('T592') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T592 LIMIT 1;

theCharVar = 'Hello from P1640';
dsply theCharVar;
P515();
P1556();
P1061();
return;