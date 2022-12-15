**free

ctl-opt dftactgrp(*no);

dcl-pi P3676;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P1359.rpgleinc'
/copy 'qrpgleref/P1859.rpgleinc'

dcl-ds theTable extname('T901') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T901 LIMIT 1;

theCharVar = 'Hello from P3676';
dsply theCharVar;
P296();
P1359();
P1859();
return;