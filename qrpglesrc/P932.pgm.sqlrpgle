**free

ctl-opt dftactgrp(*no);

dcl-pi P932;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P562.rpgleinc'

dcl-ds theTable extname('T627') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T627 LIMIT 1;

theCharVar = 'Hello from P932';
dsply theCharVar;
P178();
P325();
P562();
return;