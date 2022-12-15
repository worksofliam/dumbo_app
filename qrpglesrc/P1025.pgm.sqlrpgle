**free

ctl-opt dftactgrp(*no);

dcl-pi P1025;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P666.rpgleinc'
/copy 'qrpgleref/P738.rpgleinc'

dcl-ds theTable extname('T454') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T454 LIMIT 1;

theCharVar = 'Hello from P1025';
dsply theCharVar;
P164();
P666();
P738();
return;