**free

ctl-opt dftactgrp(*no);

dcl-pi P700;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P574.rpgleinc'

dcl-ds theTable extname('T85') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T85 LIMIT 1;

theCharVar = 'Hello from P700';
dsply theCharVar;
P292();
P120();
P574();
return;