**free

ctl-opt dftactgrp(*no);

dcl-pi P10;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T60') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T60 LIMIT 1;

theCharVar = 'Hello from P10';
dsply theCharVar;
P7();
P9();
P2();
return;