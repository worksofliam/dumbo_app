**free

ctl-opt dftactgrp(*no);

dcl-pi P4875;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3957.rpgleinc'
/copy 'qrpgleref/P4211.rpgleinc'
/copy 'qrpgleref/P3645.rpgleinc'

dcl-ds theTable extname('T494') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T494 LIMIT 1;

theCharVar = 'Hello from P4875';
dsply theCharVar;
P3957();
P4211();
P3645();
return;