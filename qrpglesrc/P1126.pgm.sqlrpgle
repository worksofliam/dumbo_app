**free

ctl-opt dftactgrp(*no);

dcl-pi P1126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P899.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P690.rpgleinc'

dcl-ds theTable extname('T1067') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1067 LIMIT 1;

theCharVar = 'Hello from P1126';
dsply theCharVar;
P899();
P783();
P690();
return;