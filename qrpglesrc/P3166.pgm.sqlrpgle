**free

ctl-opt dftactgrp(*no);

dcl-pi P3166;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2122.rpgleinc'
/copy 'qrpgleref/P2543.rpgleinc'
/copy 'qrpgleref/P2228.rpgleinc'

dcl-ds theTable extname('T1034') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1034 LIMIT 1;

theCharVar = 'Hello from P3166';
dsply theCharVar;
P2122();
P2543();
P2228();
return;