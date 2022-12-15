**free

ctl-opt dftactgrp(*no);

dcl-pi P276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'

dcl-ds theTable extname('T187') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T187 LIMIT 1;

theCharVar = 'Hello from P276';
dsply theCharVar;
P129();
P110();
P41();
return;