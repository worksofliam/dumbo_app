**free

ctl-opt dftactgrp(*no);

dcl-pi P4501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P827.rpgleinc'
/copy 'qrpgleref/P900.rpgleinc'
/copy 'qrpgleref/P1467.rpgleinc'

dcl-ds theTable extname('T525') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T525 LIMIT 1;

theCharVar = 'Hello from P4501';
dsply theCharVar;
P827();
P900();
P1467();
return;