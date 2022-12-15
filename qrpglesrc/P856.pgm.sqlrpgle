**free

ctl-opt dftactgrp(*no);

dcl-pi P856;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P405.rpgleinc'
/copy 'qrpgleref/P692.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'

dcl-ds theTable extname('T1160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1160 LIMIT 1;

theCharVar = 'Hello from P856';
dsply theCharVar;
P405();
P692();
P561();
return;