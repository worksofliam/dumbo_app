**free

ctl-opt dftactgrp(*no);

dcl-pi P4127;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P575.rpgleinc'
/copy 'qrpgleref/P3623.rpgleinc'
/copy 'qrpgleref/P2644.rpgleinc'

dcl-ds theTable extname('T1566') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1566 LIMIT 1;

theCharVar = 'Hello from P4127';
dsply theCharVar;
P575();
P3623();
P2644();
return;