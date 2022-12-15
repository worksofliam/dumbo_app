**free

ctl-opt dftactgrp(*no);

dcl-pi P1438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1088.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds theTable extname('T1054') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1054 LIMIT 1;

theCharVar = 'Hello from P1438';
dsply theCharVar;
P1088();
P1155();
P105();
return;