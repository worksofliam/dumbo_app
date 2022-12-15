**free

ctl-opt dftactgrp(*no);

dcl-pi P1861;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P822.rpgleinc'
/copy 'qrpgleref/P1780.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'

dcl-ds theTable extname('T168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T168 LIMIT 1;

theCharVar = 'Hello from P1861';
dsply theCharVar;
P822();
P1780();
P372();
return;