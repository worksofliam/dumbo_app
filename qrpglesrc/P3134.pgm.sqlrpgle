**free

ctl-opt dftactgrp(*no);

dcl-pi P3134;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P824.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P1560.rpgleinc'

dcl-ds theTable extname('T1331') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1331 LIMIT 1;

theCharVar = 'Hello from P3134';
dsply theCharVar;
P824();
P51();
P1560();
return;