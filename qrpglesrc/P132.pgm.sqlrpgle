**free

ctl-opt dftactgrp(*no);

dcl-pi P132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds theTable extname('T747') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T747 LIMIT 1;

theCharVar = 'Hello from P132';
dsply theCharVar;
P123();
P98();
P127();
return;