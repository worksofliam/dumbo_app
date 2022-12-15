**free

ctl-opt dftactgrp(*no);

dcl-pi P1604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P1549.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'

dcl-ds theTable extname('T706') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T706 LIMIT 1;

theCharVar = 'Hello from P1604';
dsply theCharVar;
P97();
P1549();
P371();
return;