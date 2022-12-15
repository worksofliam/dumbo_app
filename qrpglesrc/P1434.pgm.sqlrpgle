**free

ctl-opt dftactgrp(*no);

dcl-pi P1434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1388.rpgleinc'
/copy 'qrpgleref/P1404.rpgleinc'
/copy 'qrpgleref/P1390.rpgleinc'

dcl-ds theTable extname('T399') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T399 LIMIT 1;

theCharVar = 'Hello from P1434';
dsply theCharVar;
P1388();
P1404();
P1390();
return;