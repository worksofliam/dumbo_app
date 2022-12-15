**free

ctl-opt dftactgrp(*no);

dcl-pi P669;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P565.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T93') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T93 LIMIT 1;

theCharVar = 'Hello from P669';
dsply theCharVar;
P565();
P564();
P51();
return;