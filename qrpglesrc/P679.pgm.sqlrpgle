**free

ctl-opt dftactgrp(*no);

dcl-pi P679;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P577.rpgleinc'
/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'

dcl-ds theTable extname('T664') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T664 LIMIT 1;

theCharVar = 'Hello from P679';
dsply theCharVar;
P577();
P390();
P245();
return;