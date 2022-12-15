**free

ctl-opt dftactgrp(*no);

dcl-pi P760;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'

dcl-ds theTable extname('T540') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T540 LIMIT 1;

theCharVar = 'Hello from P760';
dsply theCharVar;
P93();
P152();
P106();
return;