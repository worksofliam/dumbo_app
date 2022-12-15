**free

ctl-opt dftactgrp(*no);

dcl-pi P2611;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P668.rpgleinc'
/copy 'qrpgleref/P1874.rpgleinc'
/copy 'qrpgleref/P2320.rpgleinc'

dcl-ds theTable extname('T1566') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1566 LIMIT 1;

theCharVar = 'Hello from P2611';
dsply theCharVar;
P668();
P1874();
P2320();
return;