**free

ctl-opt dftactgrp(*no);

dcl-pi P2320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1416.rpgleinc'
/copy 'qrpgleref/P2204.rpgleinc'
/copy 'qrpgleref/P1914.rpgleinc'

dcl-ds theTable extname('T835') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T835 LIMIT 1;

theCharVar = 'Hello from P2320';
dsply theCharVar;
P1416();
P2204();
P1914();
return;