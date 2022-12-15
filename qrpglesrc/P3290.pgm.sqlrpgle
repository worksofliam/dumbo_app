**free

ctl-opt dftactgrp(*no);

dcl-pi P3290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1046.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P2282.rpgleinc'

dcl-ds theTable extname('T304') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T304 LIMIT 1;

theCharVar = 'Hello from P3290';
dsply theCharVar;
P1046();
P264();
P2282();
return;