**free

ctl-opt dftactgrp(*no);

dcl-pi P2002;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P1524.rpgleinc'
/copy 'qrpgleref/P852.rpgleinc'

dcl-ds theTable extname('T720') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T720 LIMIT 1;

theCharVar = 'Hello from P2002';
dsply theCharVar;
P493();
P1524();
P852();
return;