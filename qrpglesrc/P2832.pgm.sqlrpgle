**free

ctl-opt dftactgrp(*no);

dcl-pi P2832;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1177.rpgleinc'
/copy 'qrpgleref/P2213.rpgleinc'
/copy 'qrpgleref/P824.rpgleinc'

dcl-ds theTable extname('T1068') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1068 LIMIT 1;

theCharVar = 'Hello from P2832';
dsply theCharVar;
P1177();
P2213();
P824();
return;