**free

ctl-opt dftactgrp(*no);

dcl-pi P3060;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2058.rpgleinc'
/copy 'qrpgleref/P2994.rpgleinc'
/copy 'qrpgleref/P1544.rpgleinc'

dcl-ds theTable extname('T275') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T275 LIMIT 1;

theCharVar = 'Hello from P3060';
dsply theCharVar;
P2058();
P2994();
P1544();
return;