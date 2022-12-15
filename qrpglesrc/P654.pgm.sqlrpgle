**free

ctl-opt dftactgrp(*no);

dcl-pi P654;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P623.rpgleinc'

dcl-ds theTable extname('T146') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T146 LIMIT 1;

theCharVar = 'Hello from P654';
dsply theCharVar;
P287();
P166();
P623();
return;