**free

ctl-opt dftactgrp(*no);

dcl-pi P5332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1750.rpgleinc'
/copy 'qrpgleref/P1885.rpgleinc'
/copy 'qrpgleref/P4374.rpgleinc'

dcl-ds theTable extname('T132') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T132 LIMIT 1;

theCharVar = 'Hello from P5332';
dsply theCharVar;
P1750();
P1885();
P4374();
return;