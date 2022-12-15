**free

ctl-opt dftactgrp(*no);

dcl-pi P5208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2754.rpgleinc'
/copy 'qrpgleref/P2778.rpgleinc'
/copy 'qrpgleref/P4801.rpgleinc'

dcl-ds theTable extname('T1353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1353 LIMIT 1;

theCharVar = 'Hello from P5208';
dsply theCharVar;
P2754();
P2778();
P4801();
return;