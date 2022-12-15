**free

ctl-opt dftactgrp(*no);

dcl-pi P1288;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P655.rpgleinc'
/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P1120.rpgleinc'

dcl-ds theTable extname('T269') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T269 LIMIT 1;

theCharVar = 'Hello from P1288';
dsply theCharVar;
P655();
P1108();
P1120();
return;