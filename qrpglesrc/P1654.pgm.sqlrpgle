**free

ctl-opt dftactgrp(*no);

dcl-pi P1654;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1624.rpgleinc'
/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P1447.rpgleinc'

dcl-ds theTable extname('T809') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T809 LIMIT 1;

theCharVar = 'Hello from P1654';
dsply theCharVar;
P1624();
P1073();
P1447();
return;