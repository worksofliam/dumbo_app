**free

ctl-opt dftactgrp(*no);

dcl-pi P1317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1224.rpgleinc'
/copy 'qrpgleref/P1232.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T926') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T926 LIMIT 1;

theCharVar = 'Hello from P1317';
dsply theCharVar;
P1224();
P1232();
P40();
return;