**free

ctl-opt dftactgrp(*no);

dcl-pi P240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'

dcl-ds theTable extname('T1296') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1296 LIMIT 1;

theCharVar = 'Hello from P240';
dsply theCharVar;
P193();
P192();
P212();
return;