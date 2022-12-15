**free

ctl-opt dftactgrp(*no);

dcl-pi P2447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P849.rpgleinc'
/copy 'qrpgleref/P1046.rpgleinc'
/copy 'qrpgleref/P1016.rpgleinc'

dcl-ds theTable extname('T958') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T958 LIMIT 1;

theCharVar = 'Hello from P2447';
dsply theCharVar;
P849();
P1046();
P1016();
return;