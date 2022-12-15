**free

ctl-opt dftactgrp(*no);

dcl-pi P1033;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P680.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'
/copy 'qrpgleref/P967.rpgleinc'

dcl-ds theTable extname('T1481') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1481 LIMIT 1;

theCharVar = 'Hello from P1033';
dsply theCharVar;
P680();
P549();
P967();
return;