**free

ctl-opt dftactgrp(*no);

dcl-pi P495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'

dcl-ds theTable extname('T111') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T111 LIMIT 1;

theCharVar = 'Hello from P495';
dsply theCharVar;
P377();
P72();
P141();
return;