**free

ctl-opt dftactgrp(*no);

dcl-pi P2371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1088.rpgleinc'
/copy 'qrpgleref/P1465.rpgleinc'
/copy 'qrpgleref/P1472.rpgleinc'

dcl-ds theTable extname('T873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T873 LIMIT 1;

theCharVar = 'Hello from P2371';
dsply theCharVar;
P1088();
P1465();
P1472();
return;