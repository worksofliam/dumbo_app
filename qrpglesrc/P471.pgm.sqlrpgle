**free

ctl-opt dftactgrp(*no);

dcl-pi P471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T161 LIMIT 1;

theCharVar = 'Hello from P471';
dsply theCharVar;
P175();
P179();
P31();
return;