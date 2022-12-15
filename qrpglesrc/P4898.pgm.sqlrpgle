**free

ctl-opt dftactgrp(*no);

dcl-pi P4898;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2844.rpgleinc'
/copy 'qrpgleref/P2201.rpgleinc'
/copy 'qrpgleref/P746.rpgleinc'

dcl-ds theTable extname('T1390') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1390 LIMIT 1;

theCharVar = 'Hello from P4898';
dsply theCharVar;
P2844();
P2201();
P746();
return;