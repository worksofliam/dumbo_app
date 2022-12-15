**free

ctl-opt dftactgrp(*no);

dcl-pi P994;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P971.rpgleinc'
/copy 'qrpgleref/P836.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T63') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T63 LIMIT 1;

theCharVar = 'Hello from P994';
dsply theCharVar;
P971();
P836();
P23();
return;