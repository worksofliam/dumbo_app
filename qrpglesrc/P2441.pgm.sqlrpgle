**free

ctl-opt dftactgrp(*no);

dcl-pi P2441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2370.rpgleinc'
/copy 'qrpgleref/P2199.rpgleinc'
/copy 'qrpgleref/P1076.rpgleinc'

dcl-ds theTable extname('T231') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T231 LIMIT 1;

theCharVar = 'Hello from P2441';
dsply theCharVar;
P2370();
P2199();
P1076();
return;