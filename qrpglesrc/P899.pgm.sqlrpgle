**free

ctl-opt dftactgrp(*no);

dcl-pi P899;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P735.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'

dcl-ds theTable extname('T18') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T18 LIMIT 1;

theCharVar = 'Hello from P899';
dsply theCharVar;
P183();
P735();
P179();
return;