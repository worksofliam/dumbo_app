**free

ctl-opt dftactgrp(*no);

dcl-pi P4217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1686.rpgleinc'
/copy 'qrpgleref/P1542.rpgleinc'
/copy 'qrpgleref/P845.rpgleinc'

dcl-ds theTable extname('T757') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T757 LIMIT 1;

theCharVar = 'Hello from P4217';
dsply theCharVar;
P1686();
P1542();
P845();
return;