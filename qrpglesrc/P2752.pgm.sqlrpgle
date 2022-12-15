**free

ctl-opt dftactgrp(*no);

dcl-pi P2752;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P708.rpgleinc'
/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'

dcl-ds theTable extname('T1266') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1266 LIMIT 1;

theCharVar = 'Hello from P2752';
dsply theCharVar;
P708();
P812();
P668();
return;