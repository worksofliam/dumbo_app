**free

ctl-opt dftactgrp(*no);

dcl-pi P2191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1546.rpgleinc'
/copy 'qrpgleref/P2097.rpgleinc'
/copy 'qrpgleref/P1933.rpgleinc'

dcl-ds theTable extname('T796') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T796 LIMIT 1;

theCharVar = 'Hello from P2191';
dsply theCharVar;
P1546();
P2097();
P1933();
return;