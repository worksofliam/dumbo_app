**free

ctl-opt dftactgrp(*no);

dcl-pi P3697;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1668.rpgleinc'
/copy 'qrpgleref/P3089.rpgleinc'
/copy 'qrpgleref/P1719.rpgleinc'

dcl-ds theTable extname('T581') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T581 LIMIT 1;

theCharVar = 'Hello from P3697';
dsply theCharVar;
P1668();
P3089();
P1719();
return;