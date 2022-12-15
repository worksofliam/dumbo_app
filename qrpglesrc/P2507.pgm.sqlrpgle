**free

ctl-opt dftactgrp(*no);

dcl-pi P2507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1115.rpgleinc'
/copy 'qrpgleref/P2379.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'

dcl-ds theTable extname('T350') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T350 LIMIT 1;

theCharVar = 'Hello from P2507';
dsply theCharVar;
P1115();
P2379();
P598();
return;