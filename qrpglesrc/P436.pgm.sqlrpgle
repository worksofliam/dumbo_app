**free

ctl-opt dftactgrp(*no);

dcl-pi P436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds theTable extname('T243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T243 LIMIT 1;

theCharVar = 'Hello from P436';
dsply theCharVar;
P420();
P169();
P61();
return;