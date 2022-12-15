**free

ctl-opt dftactgrp(*no);

dcl-pi P2363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'

dcl-ds theTable extname('T1217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1217 LIMIT 1;

theCharVar = 'Hello from P2363';
dsply theCharVar;
P631();
P895();
P519();
return;