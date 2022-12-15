**free

ctl-opt dftactgrp(*no);

dcl-pi P3205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P2552.rpgleinc'
/copy 'qrpgleref/P2985.rpgleinc'

dcl-ds theTable extname('T1513') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1513 LIMIT 1;

theCharVar = 'Hello from P3205';
dsply theCharVar;
P420();
P2552();
P2985();
return;