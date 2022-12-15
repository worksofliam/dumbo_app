**free

ctl-opt dftactgrp(*no);

dcl-pi P2073;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P1598.rpgleinc'
/copy 'qrpgleref/P1231.rpgleinc'

dcl-ds theTable extname('T1109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1109 LIMIT 1;

theCharVar = 'Hello from P2073';
dsply theCharVar;
P458();
P1598();
P1231();
return;