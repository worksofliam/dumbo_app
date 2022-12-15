**free

ctl-opt dftactgrp(*no);

dcl-pi P179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'

dcl-ds theTable extname('T757') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T757 LIMIT 1;

theCharVar = 'Hello from P179';
dsply theCharVar;
P44();
P128();
P157();
return;