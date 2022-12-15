**free

ctl-opt dftactgrp(*no);

dcl-pi P1503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P489.rpgleinc'
/copy 'qrpgleref/P845.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'

dcl-ds theTable extname('T803') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T803 LIMIT 1;

theCharVar = 'Hello from P1503';
dsply theCharVar;
P489();
P845();
P71();
return;