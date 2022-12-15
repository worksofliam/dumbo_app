**free

ctl-opt dftactgrp(*no);

dcl-pi P1709;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P927.rpgleinc'
/copy 'qrpgleref/P875.rpgleinc'

dcl-ds theTable extname('T233') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T233 LIMIT 1;

theCharVar = 'Hello from P1709';
dsply theCharVar;
P155();
P927();
P875();
return;