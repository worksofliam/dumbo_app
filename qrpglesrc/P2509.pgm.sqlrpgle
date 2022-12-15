**free

ctl-opt dftactgrp(*no);

dcl-pi P2509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P508.rpgleinc'
/copy 'qrpgleref/P1373.rpgleinc'
/copy 'qrpgleref/P2326.rpgleinc'

dcl-ds theTable extname('T533') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T533 LIMIT 1;

theCharVar = 'Hello from P2509';
dsply theCharVar;
P508();
P1373();
P2326();
return;