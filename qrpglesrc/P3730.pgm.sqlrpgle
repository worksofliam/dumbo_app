**free

ctl-opt dftactgrp(*no);

dcl-pi P3730;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P2086.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'

dcl-ds theTable extname('T904') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T904 LIMIT 1;

theCharVar = 'Hello from P3730';
dsply theCharVar;
P451();
P2086();
P142();
return;