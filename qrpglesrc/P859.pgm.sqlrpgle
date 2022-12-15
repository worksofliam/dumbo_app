**free

ctl-opt dftactgrp(*no);

dcl-pi P859;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P674.rpgleinc'
/copy 'qrpgleref/P824.rpgleinc'
/copy 'qrpgleref/P857.rpgleinc'

dcl-ds theTable extname('T185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T185 LIMIT 1;

theCharVar = 'Hello from P859';
dsply theCharVar;
P674();
P824();
P857();
return;