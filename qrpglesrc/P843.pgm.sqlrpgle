**free

ctl-opt dftactgrp(*no);

dcl-pi P843;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P696.rpgleinc'

dcl-ds theTable extname('T1839') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1839 LIMIT 1;

theCharVar = 'Hello from P843';
dsply theCharVar;
P809();
P382();
P696();
return;