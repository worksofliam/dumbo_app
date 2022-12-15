**free

ctl-opt dftactgrp(*no);

dcl-pi P3344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2130.rpgleinc'
/copy 'qrpgleref/P764.rpgleinc'
/copy 'qrpgleref/P1697.rpgleinc'

dcl-ds theTable extname('T950') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T950 LIMIT 1;

theCharVar = 'Hello from P3344';
dsply theCharVar;
P2130();
P764();
P1697();
return;