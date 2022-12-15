**free

ctl-opt dftactgrp(*no);

dcl-pi P1258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P680.rpgleinc'

dcl-ds theTable extname('T412') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T412 LIMIT 1;

theCharVar = 'Hello from P1258';
dsply theCharVar;
P1051();
P783();
P680();
return;