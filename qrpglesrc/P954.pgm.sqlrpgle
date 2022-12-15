**free

ctl-opt dftactgrp(*no);

dcl-pi P954;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P520.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'

dcl-ds theTable extname('T443') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T443 LIMIT 1;

theCharVar = 'Hello from P954';
dsply theCharVar;
P520();
P512();
P334();
return;