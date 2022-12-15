**free

ctl-opt dftactgrp(*no);

dcl-pi P2026;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P690.rpgleinc'
/copy 'qrpgleref/P2014.rpgleinc'
/copy 'qrpgleref/P1885.rpgleinc'

dcl-ds theTable extname('T1184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1184 LIMIT 1;

theCharVar = 'Hello from P2026';
dsply theCharVar;
P690();
P2014();
P1885();
return;