**free

ctl-opt dftactgrp(*no);

dcl-pi P4113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3862.rpgleinc'
/copy 'qrpgleref/P881.rpgleinc'
/copy 'qrpgleref/P2771.rpgleinc'

dcl-ds theTable extname('T1797') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1797 LIMIT 1;

theCharVar = 'Hello from P4113';
dsply theCharVar;
P3862();
P881();
P2771();
return;