**free

ctl-opt dftactgrp(*no);

dcl-pi P346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P312.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds theTable extname('T941') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T941 LIMIT 1;

theCharVar = 'Hello from P346';
dsply theCharVar;
P312();
P248();
P173();
return;