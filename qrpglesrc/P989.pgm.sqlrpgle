**free

ctl-opt dftactgrp(*no);

dcl-pi P989;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P715.rpgleinc'
/copy 'qrpgleref/P932.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'

dcl-ds theTable extname('T71') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T71 LIMIT 1;

theCharVar = 'Hello from P989';
dsply theCharVar;
P715();
P932();
P756();
return;