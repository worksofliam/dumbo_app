**free

ctl-opt dftactgrp(*no);

dcl-pi P2396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P1486.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'

dcl-ds theTable extname('T1441') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1441 LIMIT 1;

theCharVar = 'Hello from P2396';
dsply theCharVar;
P473();
P1486();
P697();
return;