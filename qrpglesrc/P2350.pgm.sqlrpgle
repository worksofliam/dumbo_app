**free

ctl-opt dftactgrp(*no);

dcl-pi P2350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1328.rpgleinc'
/copy 'qrpgleref/P961.rpgleinc'
/copy 'qrpgleref/P1340.rpgleinc'

dcl-ds theTable extname('T1083') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1083 LIMIT 1;

theCharVar = 'Hello from P2350';
dsply theCharVar;
P1328();
P961();
P1340();
return;