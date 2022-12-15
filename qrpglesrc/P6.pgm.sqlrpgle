**free

ctl-opt dftactgrp(*no);

dcl-pi P6;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T947') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T947 LIMIT 1;

theCharVar = 'Hello from P6';
dsply theCharVar;
P0();
P4();
return;