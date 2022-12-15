**free

ctl-opt dftactgrp(*no);

dcl-pi P1297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P388.rpgleinc'

dcl-ds theTable extname('T891') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T891 LIMIT 1;

theCharVar = 'Hello from P1297';
dsply theCharVar;
P371();
P783();
P388();
return;