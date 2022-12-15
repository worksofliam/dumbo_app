**free

ctl-opt dftactgrp(*no);

dcl-pi P1891;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P1050.rpgleinc'
/copy 'qrpgleref/P1559.rpgleinc'

dcl-ds theTable extname('T990') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T990 LIMIT 1;

theCharVar = 'Hello from P1891';
dsply theCharVar;
P895();
P1050();
P1559();
return;