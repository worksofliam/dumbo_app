**free

ctl-opt dftactgrp(*no);

dcl-pi P992;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P411.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'

dcl-ds theTable extname('T888') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T888 LIMIT 1;

theCharVar = 'Hello from P992';
dsply theCharVar;
P431();
P411();
P420();
return;