**free

ctl-opt dftactgrp(*no);

dcl-pi P746;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P409.rpgleinc'

dcl-ds theTable extname('T19') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T19 LIMIT 1;

theCharVar = 'Hello from P746';
dsply theCharVar;
P132();
P431();
P409();
return;