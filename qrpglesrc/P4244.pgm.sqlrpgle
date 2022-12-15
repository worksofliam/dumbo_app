**free

ctl-opt dftactgrp(*no);

dcl-pi P4244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1703.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P1661.rpgleinc'

dcl-ds theTable extname('T1112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1112 LIMIT 1;

theCharVar = 'Hello from P4244';
dsply theCharVar;
P1703();
P125();
P1661();
return;