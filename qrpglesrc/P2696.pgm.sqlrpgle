**free

ctl-opt dftactgrp(*no);

dcl-pi P2696;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1147.rpgleinc'
/copy 'qrpgleref/P1184.rpgleinc'
/copy 'qrpgleref/P2615.rpgleinc'

dcl-ds theTable extname('T1440') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1440 LIMIT 1;

theCharVar = 'Hello from P2696';
dsply theCharVar;
P1147();
P1184();
P2615();
return;