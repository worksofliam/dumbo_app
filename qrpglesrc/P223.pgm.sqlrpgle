**free

ctl-opt dftactgrp(*no);

dcl-pi P223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds theTable extname('T9') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T9 LIMIT 1;

theCharVar = 'Hello from P223';
dsply theCharVar;
P208();
P41();
P73();
return;