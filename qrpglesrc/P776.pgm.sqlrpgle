**free

ctl-opt dftactgrp(*no);

dcl-pi P776;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'

dcl-ds theTable extname('T692') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T692 LIMIT 1;

theCharVar = 'Hello from P776';
dsply theCharVar;
P192();
P585();
P604();
return;