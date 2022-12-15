**free

ctl-opt dftactgrp(*no);

dcl-pi P1480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P508.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P613.rpgleinc'

dcl-ds theTable extname('T343') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T343 LIMIT 1;

theCharVar = 'Hello from P1480';
dsply theCharVar;
P508();
P49();
P613();
return;