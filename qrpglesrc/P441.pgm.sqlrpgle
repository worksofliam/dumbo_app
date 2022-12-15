**free

ctl-opt dftactgrp(*no);

dcl-pi P441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P374.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P441';
dsply theCharVar;
P374();
P430();
P253();
return;