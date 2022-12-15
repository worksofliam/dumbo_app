**free

ctl-opt dftactgrp(*no);

dcl-pi P284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'

dcl-ds theTable extname('T247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T247 LIMIT 1;

theCharVar = 'Hello from P284';
dsply theCharVar;
P159();
P125();
P87();
return;