**free

ctl-opt dftactgrp(*no);

dcl-pi P645;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P590.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'

dcl-ds theTable extname('T254') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T254 LIMIT 1;

theCharVar = 'Hello from P645';
dsply theCharVar;
P590();
P68();
P264();
return;