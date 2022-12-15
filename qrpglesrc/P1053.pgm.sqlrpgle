**free

ctl-opt dftactgrp(*no);

dcl-pi P1053;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P868.rpgleinc'
/copy 'qrpgleref/P620.rpgleinc'
/copy 'qrpgleref/P585.rpgleinc'

dcl-ds theTable extname('T1344') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1344 LIMIT 1;

theCharVar = 'Hello from P1053';
dsply theCharVar;
P868();
P620();
P585();
return;