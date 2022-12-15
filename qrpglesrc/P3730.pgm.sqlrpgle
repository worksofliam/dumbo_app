**free

ctl-opt dftactgrp(*no);

dcl-pi P3730;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P772.rpgleinc'
/copy 'qrpgleref/P3246.rpgleinc'
/copy 'qrpgleref/P689.rpgleinc'

dcl-ds theTable extname('T498') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T498 LIMIT 1;

theCharVar = 'Hello from P3730';
dsply theCharVar;
P772();
P3246();
P689();
return;