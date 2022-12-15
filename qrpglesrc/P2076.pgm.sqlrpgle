**free

ctl-opt dftactgrp(*no);

dcl-pi P2076;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P432.rpgleinc'
/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds theTable extname('T56') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T56 LIMIT 1;

theCharVar = 'Hello from P2076';
dsply theCharVar;
P432();
P509();
P164();
return;