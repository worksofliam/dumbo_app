**free

ctl-opt dftactgrp(*no);

dcl-pi P1942;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1804.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P584.rpgleinc'

dcl-ds theTable extname('T1197') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1197 LIMIT 1;

theCharVar = 'Hello from P1942';
dsply theCharVar;
P1804();
P573();
P584();
return;