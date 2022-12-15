**free

ctl-opt dftactgrp(*no);

dcl-pi P2959;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1665.rpgleinc'
/copy 'qrpgleref/P1575.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'

dcl-ds theTable extname('T1609') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1609 LIMIT 1;

theCharVar = 'Hello from P2959';
dsply theCharVar;
P1665();
P1575();
P256();
return;