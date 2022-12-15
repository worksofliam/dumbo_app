**free

ctl-opt dftactgrp(*no);

dcl-pi P2540;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1599.rpgleinc'
/copy 'qrpgleref/P2519.rpgleinc'
/copy 'qrpgleref/P1061.rpgleinc'

dcl-ds theTable extname('T1181') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1181 LIMIT 1;

theCharVar = 'Hello from P2540';
dsply theCharVar;
P1599();
P2519();
P1061();
return;