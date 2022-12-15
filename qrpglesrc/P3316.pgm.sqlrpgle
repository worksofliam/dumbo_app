**free

ctl-opt dftactgrp(*no);

dcl-pi P3316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1342.rpgleinc'
/copy 'qrpgleref/P2234.rpgleinc'
/copy 'qrpgleref/P2184.rpgleinc'

dcl-ds theTable extname('T1051') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1051 LIMIT 1;

theCharVar = 'Hello from P3316';
dsply theCharVar;
P1342();
P2234();
P2184();
return;