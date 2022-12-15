**free

ctl-opt dftactgrp(*no);

dcl-pi P2182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1544.rpgleinc'
/copy 'qrpgleref/P1620.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds theTable extname('T287') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T287 LIMIT 1;

theCharVar = 'Hello from P2182';
dsply theCharVar;
P1544();
P1620();
P386();
return;