**free

ctl-opt dftactgrp(*no);

dcl-pi P2210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P1589.rpgleinc'

dcl-ds theTable extname('T1060') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1060 LIMIT 1;

theCharVar = 'Hello from P2210';
dsply theCharVar;
P621();
P20();
P1589();
return;