**free

ctl-opt dftactgrp(*no);

dcl-pi P1504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P500.rpgleinc'
/copy 'qrpgleref/P1146.rpgleinc'
/copy 'qrpgleref/P1076.rpgleinc'

dcl-ds theTable extname('T745') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T745 LIMIT 1;

theCharVar = 'Hello from P1504';
dsply theCharVar;
P500();
P1146();
P1076();
return;