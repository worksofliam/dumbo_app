**free

ctl-opt dftactgrp(*no);

dcl-pi P355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P355';
dsply theCharVar;
P282();
P321();
P168();
return;