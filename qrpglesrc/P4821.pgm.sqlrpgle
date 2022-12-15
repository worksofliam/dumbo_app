**free

ctl-opt dftactgrp(*no);

dcl-pi P4821;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2474.rpgleinc'
/copy 'qrpgleref/P2678.rpgleinc'
/copy 'qrpgleref/P2722.rpgleinc'

dcl-ds theTable extname('T285') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T285 LIMIT 1;

theCharVar = 'Hello from P4821';
dsply theCharVar;
P2474();
P2678();
P2722();
return;