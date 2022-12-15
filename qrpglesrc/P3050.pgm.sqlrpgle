**free

ctl-opt dftactgrp(*no);

dcl-pi P3050;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2171.rpgleinc'
/copy 'qrpgleref/P892.rpgleinc'
/copy 'qrpgleref/P1341.rpgleinc'

dcl-ds theTable extname('T915') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T915 LIMIT 1;

theCharVar = 'Hello from P3050';
dsply theCharVar;
P2171();
P892();
P1341();
return;