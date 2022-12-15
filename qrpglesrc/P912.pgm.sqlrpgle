**free

ctl-opt dftactgrp(*no);

dcl-pi P912;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'

dcl-ds theTable extname('T60') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T60 LIMIT 1;

theCharVar = 'Hello from P912';
dsply theCharVar;
P241();
P484();
P753();
return;