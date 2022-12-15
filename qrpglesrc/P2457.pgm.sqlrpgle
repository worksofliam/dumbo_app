**free

ctl-opt dftactgrp(*no);

dcl-pi P2457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P380.rpgleinc'
/copy 'qrpgleref/P1053.rpgleinc'
/copy 'qrpgleref/P1951.rpgleinc'

dcl-ds theTable extname('T1257') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1257 LIMIT 1;

theCharVar = 'Hello from P2457';
dsply theCharVar;
P380();
P1053();
P1951();
return;