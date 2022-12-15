**free

ctl-opt dftactgrp(*no);

dcl-pi P3301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2656.rpgleinc'
/copy 'qrpgleref/P3099.rpgleinc'
/copy 'qrpgleref/P3026.rpgleinc'

dcl-ds theTable extname('T41') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T41 LIMIT 1;

theCharVar = 'Hello from P3301';
dsply theCharVar;
P2656();
P3099();
P3026();
return;