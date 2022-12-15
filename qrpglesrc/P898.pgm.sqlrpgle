**free

ctl-opt dftactgrp(*no);

dcl-pi P898;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P831.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P898';
dsply theCharVar;
P525();
P831();
P484();
return;