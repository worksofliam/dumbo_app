**free

ctl-opt dftactgrp(*no);

dcl-pi P73;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T734') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T734 LIMIT 1;

theCharVar = 'Hello from P73';
dsply theCharVar;
P0();
P9();
P26();
return;