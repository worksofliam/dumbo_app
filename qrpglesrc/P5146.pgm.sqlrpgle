**free

ctl-opt dftactgrp(*no);

dcl-pi P5146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4408.rpgleinc'
/copy 'qrpgleref/P3825.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T424') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T424 LIMIT 1;

theCharVar = 'Hello from P5146';
dsply theCharVar;
P4408();
P3825();
P6();
return;