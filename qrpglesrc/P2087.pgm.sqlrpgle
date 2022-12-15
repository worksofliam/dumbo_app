**free

ctl-opt dftactgrp(*no);

dcl-pi P2087;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1589.rpgleinc'
/copy 'qrpgleref/P1328.rpgleinc'
/copy 'qrpgleref/P1802.rpgleinc'

dcl-ds theTable extname('T1758') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1758 LIMIT 1;

theCharVar = 'Hello from P2087';
dsply theCharVar;
P1589();
P1328();
P1802();
return;