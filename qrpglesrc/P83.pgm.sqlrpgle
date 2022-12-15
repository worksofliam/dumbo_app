**free

ctl-opt dftactgrp(*no);

dcl-pi P83;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds theTable extname('T1829') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1829 LIMIT 1;

theCharVar = 'Hello from P83';
dsply theCharVar;
P32();
P36();
P9();
return;