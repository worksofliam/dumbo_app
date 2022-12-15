**free

ctl-opt dftactgrp(*no);

dcl-pi P3421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2873.rpgleinc'
/copy 'qrpgleref/P3068.rpgleinc'
/copy 'qrpgleref/P1472.rpgleinc'

dcl-ds theTable extname('T938') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T938 LIMIT 1;

theCharVar = 'Hello from P3421';
dsply theCharVar;
P2873();
P3068();
P1472();
return;