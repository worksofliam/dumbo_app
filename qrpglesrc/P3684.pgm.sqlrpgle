**free

ctl-opt dftactgrp(*no);

dcl-pi P3684;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1741.rpgleinc'
/copy 'qrpgleref/P3590.rpgleinc'
/copy 'qrpgleref/P1822.rpgleinc'

dcl-ds theTable extname('T644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T644 LIMIT 1;

theCharVar = 'Hello from P3684';
dsply theCharVar;
P1741();
P3590();
P1822();
return;