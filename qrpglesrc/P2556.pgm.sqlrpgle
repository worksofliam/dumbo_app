**free

ctl-opt dftactgrp(*no);

dcl-pi P2556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1136.rpgleinc'
/copy 'qrpgleref/P1194.rpgleinc'
/copy 'qrpgleref/P1906.rpgleinc'

dcl-ds theTable extname('T1006') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1006 LIMIT 1;

theCharVar = 'Hello from P2556';
dsply theCharVar;
P1136();
P1194();
P1906();
return;