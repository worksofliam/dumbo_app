**free

ctl-opt dftactgrp(*no);

dcl-pi P1773;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P667.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P1522.rpgleinc'

dcl-ds theTable extname('T672') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T672 LIMIT 1;

theCharVar = 'Hello from P1773';
dsply theCharVar;
P667();
P371();
P1522();
return;