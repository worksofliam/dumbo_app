**free

ctl-opt dftactgrp(*no);

dcl-pi P985;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P786.rpgleinc'
/copy 'qrpgleref/P630.rpgleinc'

dcl-ds theTable extname('T140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T140 LIMIT 1;

theCharVar = 'Hello from P985';
dsply theCharVar;
P893();
P786();
P630();
return;