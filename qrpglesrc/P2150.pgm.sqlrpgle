**free

ctl-opt dftactgrp(*no);

dcl-pi P2150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'
/copy 'qrpgleref/P874.rpgleinc'

dcl-ds theTable extname('T757') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T757 LIMIT 1;

theCharVar = 'Hello from P2150';
dsply theCharVar;
P282();
P515();
P874();
return;