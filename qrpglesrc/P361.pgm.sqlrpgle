**free

ctl-opt dftactgrp(*no);

dcl-pi P361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T0') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T0 LIMIT 1;

theCharVar = 'Hello from P361';
dsply theCharVar;
P63();
P259();
P192();
return;