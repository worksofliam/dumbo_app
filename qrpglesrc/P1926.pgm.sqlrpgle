**free

ctl-opt dftactgrp(*no);

dcl-pi P1926;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P368.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P997.rpgleinc'

dcl-ds theTable extname('T614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T614 LIMIT 1;

theCharVar = 'Hello from P1926';
dsply theCharVar;
P368();
P52();
P997();
return;