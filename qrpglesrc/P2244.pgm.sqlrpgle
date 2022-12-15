**free

ctl-opt dftactgrp(*no);

dcl-pi P2244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P2147.rpgleinc'

dcl-ds theTable extname('T808') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T808 LIMIT 1;

theCharVar = 'Hello from P2244';
dsply theCharVar;
P158();
P210();
P2147();
return;