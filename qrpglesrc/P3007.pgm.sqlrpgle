**free

ctl-opt dftactgrp(*no);

dcl-pi P3007;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1900.rpgleinc'
/copy 'qrpgleref/P2739.rpgleinc'
/copy 'qrpgleref/P1824.rpgleinc'

dcl-ds theTable extname('T1017') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1017 LIMIT 1;

theCharVar = 'Hello from P3007';
dsply theCharVar;
P1900();
P2739();
P1824();
return;