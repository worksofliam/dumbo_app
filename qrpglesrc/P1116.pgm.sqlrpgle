**free

ctl-opt dftactgrp(*no);

dcl-pi P1116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P941.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P566.rpgleinc'

dcl-ds theTable extname('T252') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T252 LIMIT 1;

theCharVar = 'Hello from P1116';
dsply theCharVar;
P941();
P340();
P566();
return;