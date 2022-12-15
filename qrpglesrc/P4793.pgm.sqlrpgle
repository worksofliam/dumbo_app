**free

ctl-opt dftactgrp(*no);

dcl-pi P4793;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P4423.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'

dcl-ds theTable extname('T554') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T554 LIMIT 1;

theCharVar = 'Hello from P4793';
dsply theCharVar;
P557();
P4423();
P230();
return;