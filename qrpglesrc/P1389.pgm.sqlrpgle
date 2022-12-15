**free

ctl-opt dftactgrp(*no);

dcl-pi P1389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P1327.rpgleinc'

dcl-ds theTable extname('T1655') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1655 LIMIT 1;

theCharVar = 'Hello from P1389';
dsply theCharVar;
P3();
P524();
P1327();
return;