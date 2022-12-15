**free

ctl-opt dftactgrp(*no);

dcl-pi P2044;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P989.rpgleinc'
/copy 'qrpgleref/P1397.rpgleinc'
/copy 'qrpgleref/P1152.rpgleinc'

dcl-ds theTable extname('T1247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1247 LIMIT 1;

theCharVar = 'Hello from P2044';
dsply theCharVar;
P989();
P1397();
P1152();
return;