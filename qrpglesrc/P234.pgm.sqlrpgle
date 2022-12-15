**free

ctl-opt dftactgrp(*no);

dcl-pi P234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds theTable extname('T1160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1160 LIMIT 1;

theCharVar = 'Hello from P234';
dsply theCharVar;
P122();
P74();
P167();
return;