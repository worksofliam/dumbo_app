**free

ctl-opt dftactgrp(*no);

dcl-pi P1864;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P1454.rpgleinc'

dcl-ds theTable extname('T1807') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1807 LIMIT 1;

theCharVar = 'Hello from P1864';
dsply theCharVar;
P491();
P173();
P1454();
return;