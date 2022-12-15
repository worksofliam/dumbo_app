**free

ctl-opt dftactgrp(*no);

dcl-pi P1727;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1040.rpgleinc'
/copy 'qrpgleref/P1566.rpgleinc'
/copy 'qrpgleref/P674.rpgleinc'

dcl-ds theTable extname('T731') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T731 LIMIT 1;

theCharVar = 'Hello from P1727';
dsply theCharVar;
P1040();
P1566();
P674();
return;