**free

ctl-opt dftactgrp(*no);

dcl-pi P1260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P759.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P833.rpgleinc'

dcl-ds theTable extname('T1759') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1759 LIMIT 1;

theCharVar = 'Hello from P1260';
dsply theCharVar;
P759();
P51();
P833();
return;