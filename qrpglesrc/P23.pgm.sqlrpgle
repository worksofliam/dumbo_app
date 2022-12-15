**free

ctl-opt dftactgrp(*no);

dcl-pi P23;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T971') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T971 LIMIT 1;

theCharVar = 'Hello from P23';
dsply theCharVar;
P18();
P9();
P0();
return;