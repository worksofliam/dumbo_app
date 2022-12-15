**free

ctl-opt dftactgrp(*no);

dcl-pi P3645;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P969.rpgleinc'
/copy 'qrpgleref/P2282.rpgleinc'

dcl-ds theTable extname('T1581') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1581 LIMIT 1;

theCharVar = 'Hello from P3645';
dsply theCharVar;
P102();
P969();
P2282();
return;