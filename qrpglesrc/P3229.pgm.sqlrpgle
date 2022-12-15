**free

ctl-opt dftactgrp(*no);

dcl-pi P3229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P772.rpgleinc'
/copy 'qrpgleref/P3127.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'

dcl-ds theTable extname('T532') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T532 LIMIT 1;

theCharVar = 'Hello from P3229';
dsply theCharVar;
P772();
P3127();
P315();
return;