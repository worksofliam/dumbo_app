**free

ctl-opt dftactgrp(*no);

dcl-pi P473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'

dcl-ds theTable extname('T452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T452 LIMIT 1;

theCharVar = 'Hello from P473';
dsply theCharVar;
P441();
P390();
P96();
return;