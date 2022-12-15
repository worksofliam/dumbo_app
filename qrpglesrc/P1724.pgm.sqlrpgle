**free

ctl-opt dftactgrp(*no);

dcl-pi P1724;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'
/copy 'qrpgleref/P1378.rpgleinc'

dcl-ds theTable extname('T1202') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1202 LIMIT 1;

theCharVar = 'Hello from P1724';
dsply theCharVar;
P624();
P659();
P1378();
return;