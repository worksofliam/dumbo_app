**free

ctl-opt dftactgrp(*no);

dcl-pi P3692;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3458.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'

dcl-ds theTable extname('T1788') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1788 LIMIT 1;

theCharVar = 'Hello from P3692';
dsply theCharVar;
P3458();
P532();
P1155();
return;