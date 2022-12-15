**free

ctl-opt dftactgrp(*no);

dcl-pi P2127;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P1710.rpgleinc'
/copy 'qrpgleref/P1840.rpgleinc'

dcl-ds theTable extname('T814') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T814 LIMIT 1;

theCharVar = 'Hello from P2127';
dsply theCharVar;
P112();
P1710();
P1840();
return;