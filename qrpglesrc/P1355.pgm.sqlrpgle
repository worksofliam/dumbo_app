**free

ctl-opt dftactgrp(*no);

dcl-pi P1355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P761.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'

dcl-ds theTable extname('T41') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T41 LIMIT 1;

theCharVar = 'Hello from P1355';
dsply theCharVar;
P761();
P458();
P168();
return;