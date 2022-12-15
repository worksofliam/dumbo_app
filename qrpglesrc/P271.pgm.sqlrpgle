**free

ctl-opt dftactgrp(*no);

dcl-pi P271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T327') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T327 LIMIT 1;

theCharVar = 'Hello from P271';
dsply theCharVar;
P164();
P182();
P44();
return;