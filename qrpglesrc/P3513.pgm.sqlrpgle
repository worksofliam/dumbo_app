**free

ctl-opt dftactgrp(*no);

dcl-pi P3513;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2149.rpgleinc'
/copy 'qrpgleref/P844.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'

dcl-ds theTable extname('T562') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T562 LIMIT 1;

theCharVar = 'Hello from P3513';
dsply theCharVar;
P2149();
P844();
P280();
return;