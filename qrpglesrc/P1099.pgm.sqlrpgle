**free

ctl-opt dftactgrp(*no);

dcl-pi P1099;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds theTable extname('T262') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T262 LIMIT 1;

theCharVar = 'Hello from P1099';
dsply theCharVar;
P251();
P149();
P250();
return;