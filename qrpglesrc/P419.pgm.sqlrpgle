**free

ctl-opt dftactgrp(*no);

dcl-pi P419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P347.rpgleinc'

dcl-ds theTable extname('T128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T128 LIMIT 1;

theCharVar = 'Hello from P419';
dsply theCharVar;
P258();
P253();
P347();
return;