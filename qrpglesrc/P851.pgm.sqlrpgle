**free

ctl-opt dftactgrp(*no);

dcl-pi P851;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P673.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'

dcl-ds theTable extname('T167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T167 LIMIT 1;

theCharVar = 'Hello from P851';
dsply theCharVar;
P673();
P512();
P177();
return;