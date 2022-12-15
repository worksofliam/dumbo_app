**free

ctl-opt dftactgrp(*no);

dcl-pi P1265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1014.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'
/copy 'qrpgleref/P899.rpgleinc'

dcl-ds theTable extname('T498') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T498 LIMIT 1;

theCharVar = 'Hello from P1265';
dsply theCharVar;
P1014();
P500();
P899();
return;