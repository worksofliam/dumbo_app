**free

ctl-opt dftactgrp(*no);

dcl-pi P3278;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3211.rpgleinc'
/copy 'qrpgleref/P2562.rpgleinc'
/copy 'qrpgleref/P1269.rpgleinc'

dcl-ds theTable extname('T398') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T398 LIMIT 1;

theCharVar = 'Hello from P3278';
dsply theCharVar;
P3211();
P2562();
P1269();
return;