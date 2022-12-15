**free

ctl-opt dftactgrp(*no);

dcl-pi P525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T81') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T81 LIMIT 1;

theCharVar = 'Hello from P525';
dsply theCharVar;
P8();
P367();
P2();
return;