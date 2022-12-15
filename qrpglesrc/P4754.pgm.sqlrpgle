**free

ctl-opt dftactgrp(*no);

dcl-pi P4754;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3940.rpgleinc'
/copy 'qrpgleref/P2183.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'

dcl-ds theTable extname('T1458') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1458 LIMIT 1;

theCharVar = 'Hello from P4754';
dsply theCharVar;
P3940();
P2183();
P597();
return;