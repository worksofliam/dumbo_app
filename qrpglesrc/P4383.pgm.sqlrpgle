**free

ctl-opt dftactgrp(*no);

dcl-pi P4383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P3968.rpgleinc'
/copy 'qrpgleref/P3477.rpgleinc'

dcl-ds theTable extname('T1663') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1663 LIMIT 1;

theCharVar = 'Hello from P4383';
dsply theCharVar;
P595();
P3968();
P3477();
return;