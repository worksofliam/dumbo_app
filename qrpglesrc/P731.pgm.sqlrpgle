**free

ctl-opt dftactgrp(*no);

dcl-pi P731;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P666.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'

dcl-ds theTable extname('T51') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T51 LIMIT 1;

theCharVar = 'Hello from P731';
dsply theCharVar;
P325();
P666();
P75();
return;