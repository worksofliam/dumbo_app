**free

ctl-opt dftactgrp(*no);

dcl-pi P2747;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P1328.rpgleinc'

dcl-ds theTable extname('T407') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T407 LIMIT 1;

theCharVar = 'Hello from P2747';
dsply theCharVar;
P280();
P421();
P1328();
return;