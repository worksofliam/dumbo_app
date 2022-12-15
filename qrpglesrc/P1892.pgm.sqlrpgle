**free

ctl-opt dftactgrp(*no);

dcl-pi P1892;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P551.rpgleinc'
/copy 'qrpgleref/P1354.rpgleinc'
/copy 'qrpgleref/P784.rpgleinc'

dcl-ds theTable extname('T1550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1550 LIMIT 1;

theCharVar = 'Hello from P1892';
dsply theCharVar;
P551();
P1354();
P784();
return;