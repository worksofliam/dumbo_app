**free

ctl-opt dftactgrp(*no);

dcl-pi P442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'

dcl-ds theTable extname('T1574') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1574 LIMIT 1;

theCharVar = 'Hello from P442';
dsply theCharVar;
P95();
P354();
P326();
return;