**free

ctl-opt dftactgrp(*no);

dcl-pi P3014;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P593.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'

dcl-ds theTable extname('T1822') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1822 LIMIT 1;

theCharVar = 'Hello from P3014';
dsply theCharVar;
P593();
P338();
P274();
return;