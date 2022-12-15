**free

ctl-opt dftactgrp(*no);

dcl-pi P1376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1119.rpgleinc'
/copy 'qrpgleref/P889.rpgleinc'
/copy 'qrpgleref/P1280.rpgleinc'

dcl-ds theTable extname('T666') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T666 LIMIT 1;

theCharVar = 'Hello from P1376';
dsply theCharVar;
P1119();
P889();
P1280();
return;