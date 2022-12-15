**free

ctl-opt dftactgrp(*no);

dcl-pi P1454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P626.rpgleinc'
/copy 'qrpgleref/P1450.rpgleinc'

dcl-ds theTable extname('T756') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T756 LIMIT 1;

theCharVar = 'Hello from P1454';
dsply theCharVar;
P74();
P626();
P1450();
return;