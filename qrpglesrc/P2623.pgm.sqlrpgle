**free

ctl-opt dftactgrp(*no);

dcl-pi P2623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1297.rpgleinc'
/copy 'qrpgleref/P1040.rpgleinc'
/copy 'qrpgleref/P897.rpgleinc'

dcl-ds theTable extname('T305') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T305 LIMIT 1;

theCharVar = 'Hello from P2623';
dsply theCharVar;
P1297();
P1040();
P897();
return;