**free

ctl-opt dftactgrp(*no);

dcl-pi P3509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2729.rpgleinc'
/copy 'qrpgleref/P3386.rpgleinc'
/copy 'qrpgleref/P1405.rpgleinc'

dcl-ds theTable extname('T143') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T143 LIMIT 1;

theCharVar = 'Hello from P3509';
dsply theCharVar;
P2729();
P3386();
P1405();
return;