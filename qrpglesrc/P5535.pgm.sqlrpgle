**free

ctl-opt dftactgrp(*no);

dcl-pi P5535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1845.rpgleinc'
/copy 'qrpgleref/P2275.rpgleinc'
/copy 'qrpgleref/P1415.rpgleinc'

dcl-ds theTable extname('T1247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1247 LIMIT 1;

theCharVar = 'Hello from P5535';
dsply theCharVar;
P1845();
P2275();
P1415();
return;