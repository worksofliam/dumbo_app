**free

ctl-opt dftactgrp(*no);

dcl-pi P1568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P810.rpgleinc'
/copy 'qrpgleref/P1173.rpgleinc'
/copy 'qrpgleref/P916.rpgleinc'

dcl-ds theTable extname('T705') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T705 LIMIT 1;

theCharVar = 'Hello from P1568';
dsply theCharVar;
P810();
P1173();
P916();
return;