**free

ctl-opt dftactgrp(*no);

dcl-pi P1620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1373.rpgleinc'
/copy 'qrpgleref/P1292.rpgleinc'
/copy 'qrpgleref/P643.rpgleinc'

dcl-ds theTable extname('T848') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T848 LIMIT 1;

theCharVar = 'Hello from P1620';
dsply theCharVar;
P1373();
P1292();
P643();
return;