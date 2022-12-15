**free

ctl-opt dftactgrp(*no);

dcl-pi P275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'

dcl-ds theTable extname('T1086') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1086 LIMIT 1;

theCharVar = 'Hello from P275';
dsply theCharVar;
P91();
P31();
P142();
return;