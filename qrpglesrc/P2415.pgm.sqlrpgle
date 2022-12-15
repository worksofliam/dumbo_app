**free

ctl-opt dftactgrp(*no);

dcl-pi P2415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1858.rpgleinc'
/copy 'qrpgleref/P1291.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'

dcl-ds theTable extname('T403') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T403 LIMIT 1;

theCharVar = 'Hello from P2415';
dsply theCharVar;
P1858();
P1291();
P320();
return;