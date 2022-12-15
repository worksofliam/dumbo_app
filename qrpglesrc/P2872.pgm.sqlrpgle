**free

ctl-opt dftactgrp(*no);

dcl-pi P2872;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P884.rpgleinc'
/copy 'qrpgleref/P1205.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'

dcl-ds theTable extname('T1140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1140 LIMIT 1;

theCharVar = 'Hello from P2872';
dsply theCharVar;
P884();
P1205();
P598();
return;