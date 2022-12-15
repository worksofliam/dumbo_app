**free

ctl-opt dftactgrp(*no);

dcl-pi P3897;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1874.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P3801.rpgleinc'

dcl-ds theTable extname('T380') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T380 LIMIT 1;

theCharVar = 'Hello from P3897';
dsply theCharVar;
P1874();
P371();
P3801();
return;