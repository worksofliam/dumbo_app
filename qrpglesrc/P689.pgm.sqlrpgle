**free

ctl-opt dftactgrp(*no);

dcl-pi P689;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'

dcl-ds theTable extname('T915') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T915 LIMIT 1;

theCharVar = 'Hello from P689';
dsply theCharVar;
P292();
P334();
P350();
return;