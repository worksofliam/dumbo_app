**free

ctl-opt dftactgrp(*no);

dcl-pi P345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P245.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'

dcl-ds theTable extname('T140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T140 LIMIT 1;

theCharVar = 'Hello from P345';
dsply theCharVar;
P245();
P159();
P99();
return;