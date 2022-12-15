**free

ctl-opt dftactgrp(*no);

dcl-pi P936;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P692.rpgleinc'
/copy 'qrpgleref/P355.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'

dcl-ds theTable extname('T275') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T275 LIMIT 1;

theCharVar = 'Hello from P936';
dsply theCharVar;
P692();
P355();
P573();
return;