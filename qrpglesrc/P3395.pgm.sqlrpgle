**free

ctl-opt dftactgrp(*no);

dcl-pi P3395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P2948.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'

dcl-ds theTable extname('T764') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T764 LIMIT 1;

theCharVar = 'Hello from P3395';
dsply theCharVar;
P495();
P2948();
P809();
return;