**free

ctl-opt dftactgrp(*no);

dcl-pi P612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P520.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P191.rpgleinc'

dcl-ds theTable extname('T490') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T490 LIMIT 1;

theCharVar = 'Hello from P612';
dsply theCharVar;
P520();
P254();
P191();
return;