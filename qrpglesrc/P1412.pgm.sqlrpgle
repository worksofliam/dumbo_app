**free

ctl-opt dftactgrp(*no);

dcl-pi P1412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P727.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P1368.rpgleinc'

dcl-ds theTable extname('T884') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T884 LIMIT 1;

theCharVar = 'Hello from P1412';
dsply theCharVar;
P727();
P54();
P1368();
return;