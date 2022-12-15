**free

ctl-opt dftactgrp(*no);

dcl-pi P3573;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2472.rpgleinc'
/copy 'qrpgleref/P1076.rpgleinc'
/copy 'qrpgleref/P1348.rpgleinc'

dcl-ds theTable extname('T271') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T271 LIMIT 1;

theCharVar = 'Hello from P3573';
dsply theCharVar;
P2472();
P1076();
P1348();
return;