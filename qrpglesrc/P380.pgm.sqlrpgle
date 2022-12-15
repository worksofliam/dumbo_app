**free

ctl-opt dftactgrp(*no);

dcl-pi P380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'

dcl-ds theTable extname('T256') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T256 LIMIT 1;

theCharVar = 'Hello from P380';
dsply theCharVar;
P8();
P279();
P137();
return;