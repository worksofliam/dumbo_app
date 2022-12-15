**free

ctl-opt dftactgrp(*no);

dcl-pi P3661;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3284.rpgleinc'
/copy 'qrpgleref/P1349.rpgleinc'
/copy 'qrpgleref/P1928.rpgleinc'

dcl-ds theTable extname('T860') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T860 LIMIT 1;

theCharVar = 'Hello from P3661';
dsply theCharVar;
P3284();
P1349();
P1928();
return;