**free

ctl-opt dftactgrp(*no);

dcl-pi P193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'

dcl-ds theTable extname('T112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T112 LIMIT 1;

theCharVar = 'Hello from P193';
dsply theCharVar;
P98();
P51();
P171();
return;