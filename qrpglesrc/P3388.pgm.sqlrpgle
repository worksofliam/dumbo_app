**free

ctl-opt dftactgrp(*no);

dcl-pi P3388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2096.rpgleinc'
/copy 'qrpgleref/P2789.rpgleinc'
/copy 'qrpgleref/P2033.rpgleinc'

dcl-ds theTable extname('T1040') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1040 LIMIT 1;

theCharVar = 'Hello from P3388';
dsply theCharVar;
P2096();
P2789();
P2033();
return;