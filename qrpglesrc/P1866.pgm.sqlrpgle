**free

ctl-opt dftactgrp(*no);

dcl-pi P1866;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'

dcl-ds theTable extname('T886') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T886 LIMIT 1;

theCharVar = 'Hello from P1866';
dsply theCharVar;
P240();
P110();
P524();
return;