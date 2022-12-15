**free

ctl-opt dftactgrp(*no);

dcl-pi P758;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P513.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'

dcl-ds theTable extname('T208') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T208 LIMIT 1;

theCharVar = 'Hello from P758';
dsply theCharVar;
P513();
P353();
P206();
return;