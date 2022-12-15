**free

ctl-opt dftactgrp(*no);

dcl-pi P2738;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1416.rpgleinc'
/copy 'qrpgleref/P2477.rpgleinc'
/copy 'qrpgleref/P1434.rpgleinc'

dcl-ds theTable extname('T1207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1207 LIMIT 1;

theCharVar = 'Hello from P2738';
dsply theCharVar;
P1416();
P2477();
P1434();
return;