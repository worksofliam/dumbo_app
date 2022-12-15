**free

ctl-opt dftactgrp(*no);

dcl-pi P1888;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1756.rpgleinc'
/copy 'qrpgleref/P1087.rpgleinc'
/copy 'qrpgleref/P805.rpgleinc'

dcl-ds theTable extname('T1088') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1088 LIMIT 1;

theCharVar = 'Hello from P1888';
dsply theCharVar;
P1756();
P1087();
P805();
return;