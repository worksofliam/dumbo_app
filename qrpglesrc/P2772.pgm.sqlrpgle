**free

ctl-opt dftactgrp(*no);

dcl-pi P2772;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2121.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'
/copy 'qrpgleref/P1675.rpgleinc'

dcl-ds theTable extname('T1404') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1404 LIMIT 1;

theCharVar = 'Hello from P2772';
dsply theCharVar;
P2121();
P1042();
P1675();
return;