**free

ctl-opt dftactgrp(*no);

dcl-pi P1303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T1742') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1742 LIMIT 1;

theCharVar = 'Hello from P1303';
dsply theCharVar;
P783();
P737();
P44();
return;