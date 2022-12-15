**free

ctl-opt dftactgrp(*no);

dcl-pi P4785;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1372.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P1678.rpgleinc'

dcl-ds theTable extname('T1375') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1375 LIMIT 1;

theCharVar = 'Hello from P4785';
dsply theCharVar;
P1372();
P631();
P1678();
return;