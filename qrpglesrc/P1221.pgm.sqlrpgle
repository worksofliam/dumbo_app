**free

ctl-opt dftactgrp(*no);

dcl-pi P1221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P663.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds theTable extname('T330') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T330 LIMIT 1;

theCharVar = 'Hello from P1221';
dsply theCharVar;
P300();
P663();
P325();
return;