**free

ctl-opt dftactgrp(*no);

dcl-pi P601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P597.rpgleinc'
/copy 'qrpgleref/P592.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T762') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T762 LIMIT 1;

theCharVar = 'Hello from P601';
dsply theCharVar;
P597();
P592();
P7();
return;