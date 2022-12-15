**free

ctl-opt dftactgrp(*no);

dcl-pi P4275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1303.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P2033.rpgleinc'

dcl-ds theTable extname('T343') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T343 LIMIT 1;

theCharVar = 'Hello from P4275';
dsply theCharVar;
P1303();
P4();
P2033();
return;