**free

ctl-opt dftactgrp(*no);

dcl-pi P2081;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P1039.rpgleinc'

dcl-ds theTable extname('T447') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T447 LIMIT 1;

theCharVar = 'Hello from P2081';
dsply theCharVar;
P183();
P233();
P1039();
return;