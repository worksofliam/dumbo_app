**free

ctl-opt dftactgrp(*no);

dcl-pi P4488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3181.rpgleinc'
/copy 'qrpgleref/P3414.rpgleinc'
/copy 'qrpgleref/P2112.rpgleinc'

dcl-ds theTable extname('T761') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T761 LIMIT 1;

theCharVar = 'Hello from P4488';
dsply theCharVar;
P3181();
P3414();
P2112();
return;