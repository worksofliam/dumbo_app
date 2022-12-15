**free

ctl-opt dftactgrp(*no);

dcl-pi P126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'

dcl-ds theTable extname('T666') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T666 LIMIT 1;

theCharVar = 'Hello from P126';
dsply theCharVar;
P1();
P52();
return;