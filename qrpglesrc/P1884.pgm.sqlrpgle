**free

ctl-opt dftactgrp(*no);

dcl-pi P1884;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1565.rpgleinc'
/copy 'qrpgleref/P1631.rpgleinc'
/copy 'qrpgleref/P1832.rpgleinc'

dcl-ds theTable extname('T1545') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1545 LIMIT 1;

theCharVar = 'Hello from P1884';
dsply theCharVar;
P1565();
P1631();
P1832();
return;