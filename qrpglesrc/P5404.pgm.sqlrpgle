**free

ctl-opt dftactgrp(*no);

dcl-pi P5404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1043.rpgleinc'
/copy 'qrpgleref/P1110.rpgleinc'
/copy 'qrpgleref/P1696.rpgleinc'

dcl-ds theTable extname('T1804') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1804 LIMIT 1;

theCharVar = 'Hello from P5404';
dsply theCharVar;
P1043();
P1110();
P1696();
return;