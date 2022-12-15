**free

ctl-opt dftactgrp(*no);

dcl-pi P1113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1096.rpgleinc'
/copy 'qrpgleref/P672.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds theTable extname('T1734') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1734 LIMIT 1;

theCharVar = 'Hello from P1113';
dsply theCharVar;
P1096();
P672();
P82();
return;