**free

ctl-opt dftactgrp(*no);

dcl-pi P1420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P1135.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'

dcl-ds theTable extname('T297') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T297 LIMIT 1;

theCharVar = 'Hello from P1420';
dsply theCharVar;
P580();
P1135();
P338();
return;