**free

ctl-opt dftactgrp(*no);

dcl-pi P812;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P669.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'

dcl-ds theTable extname('T467') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T467 LIMIT 1;

theCharVar = 'Hello from P812';
dsply theCharVar;
P580();
P669();
P184();
return;