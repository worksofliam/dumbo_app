**free

ctl-opt dftactgrp(*no);

dcl-pi P3936;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P2508.rpgleinc'
/copy 'qrpgleref/P2552.rpgleinc'

dcl-ds theTable extname('T226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T226 LIMIT 1;

theCharVar = 'Hello from P3936';
dsply theCharVar;
P429();
P2508();
P2552();
return;