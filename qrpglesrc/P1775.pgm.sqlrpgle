**free

ctl-opt dftactgrp(*no);

dcl-pi P1775;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1465.rpgleinc'
/copy 'qrpgleref/P1110.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'

dcl-ds theTable extname('T128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T128 LIMIT 1;

theCharVar = 'Hello from P1775';
dsply theCharVar;
P1465();
P1110();
P561();
return;