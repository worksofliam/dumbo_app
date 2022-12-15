**free

ctl-opt dftactgrp(*no);

dcl-pi P1990;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P1353.rpgleinc'
/copy 'qrpgleref/P1260.rpgleinc'

dcl-ds theTable extname('T1217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1217 LIMIT 1;

theCharVar = 'Hello from P1990';
dsply theCharVar;
P51();
P1353();
P1260();
return;