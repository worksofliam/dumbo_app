**free

ctl-opt dftactgrp(*no);

dcl-pi P1692;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1367.rpgleinc'
/copy 'qrpgleref/P925.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T355') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T355 LIMIT 1;

theCharVar = 'Hello from P1692';
dsply theCharVar;
P1367();
P925();
P7();
return;