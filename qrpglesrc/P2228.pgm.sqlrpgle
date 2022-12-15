**free

ctl-opt dftactgrp(*no);

dcl-pi P2228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P737.rpgleinc'
/copy 'qrpgleref/P805.rpgleinc'
/copy 'qrpgleref/P1354.rpgleinc'

dcl-ds theTable extname('T643') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T643 LIMIT 1;

theCharVar = 'Hello from P2228';
dsply theCharVar;
P737();
P805();
P1354();
return;