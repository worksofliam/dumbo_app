**free

ctl-opt dftactgrp(*no);

dcl-pi P3462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P1279.rpgleinc'
/copy 'qrpgleref/P2006.rpgleinc'

dcl-ds theTable extname('T505') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T505 LIMIT 1;

theCharVar = 'Hello from P3462';
dsply theCharVar;
P456();
P1279();
P2006();
return;