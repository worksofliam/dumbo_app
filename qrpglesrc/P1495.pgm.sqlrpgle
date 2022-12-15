**free

ctl-opt dftactgrp(*no);

dcl-pi P1495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P1278.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'

dcl-ds theTable extname('T584') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T584 LIMIT 1;

theCharVar = 'Hello from P1495';
dsply theCharVar;
P20();
P1278();
P158();
return;