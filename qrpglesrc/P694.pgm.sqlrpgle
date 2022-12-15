**free

ctl-opt dftactgrp(*no);

dcl-pi P694;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P536.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds theTable extname('T242') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T242 LIMIT 1;

theCharVar = 'Hello from P694';
dsply theCharVar;
P606();
P536();
P38();
return;