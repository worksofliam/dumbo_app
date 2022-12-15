**free

ctl-opt dftactgrp(*no);

dcl-pi P2963;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1118.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P2282.rpgleinc'

dcl-ds theTable extname('T620') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T620 LIMIT 1;

theCharVar = 'Hello from P2963';
dsply theCharVar;
P1118();
P797();
P2282();
return;