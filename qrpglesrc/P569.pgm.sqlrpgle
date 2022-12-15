**free

ctl-opt dftactgrp(*no);

dcl-pi P569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P454.rpgleinc'

dcl-ds theTable extname('T226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T226 LIMIT 1;

theCharVar = 'Hello from P569';
dsply theCharVar;
P146();
P394();
P454();
return;