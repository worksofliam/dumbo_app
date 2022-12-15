**free

ctl-opt dftactgrp(*no);

dcl-pi P4686;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3280.rpgleinc'
/copy 'qrpgleref/P4416.rpgleinc'
/copy 'qrpgleref/P2194.rpgleinc'

dcl-ds theTable extname('T982') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T982 LIMIT 1;

theCharVar = 'Hello from P4686';
dsply theCharVar;
P3280();
P4416();
P2194();
return;