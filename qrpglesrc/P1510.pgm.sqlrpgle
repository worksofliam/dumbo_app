**free

ctl-opt dftactgrp(*no);

dcl-pi P1510;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P626.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds theTable extname('T150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T150 LIMIT 1;

theCharVar = 'Hello from P1510';
dsply theCharVar;
P626();
P832();
P33();
return;