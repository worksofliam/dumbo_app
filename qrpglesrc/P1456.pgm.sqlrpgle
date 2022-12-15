**free

ctl-opt dftactgrp(*no);

dcl-pi P1456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P1305.rpgleinc'

dcl-ds theTable extname('T1006') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1006 LIMIT 1;

theCharVar = 'Hello from P1456';
dsply theCharVar;
P60();
P783();
P1305();
return;