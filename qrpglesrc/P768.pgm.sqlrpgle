**free

ctl-opt dftactgrp(*no);

dcl-pi P768;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P676.rpgleinc'

dcl-ds theTable extname('T706') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T706 LIMIT 1;

theCharVar = 'Hello from P768';
dsply theCharVar;
P342();
P397();
P676();
return;