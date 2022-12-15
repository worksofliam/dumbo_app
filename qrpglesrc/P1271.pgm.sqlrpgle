**free

ctl-opt dftactgrp(*no);

dcl-pi P1271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds theTable extname('T664') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T664 LIMIT 1;

theCharVar = 'Hello from P1271';
dsply theCharVar;
P720();
P54();
P62();
return;