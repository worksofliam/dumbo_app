**free

ctl-opt dftactgrp(*no);

dcl-pi P2038;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1261.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P536.rpgleinc'

dcl-ds theTable extname('T840') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T840 LIMIT 1;

theCharVar = 'Hello from P2038';
dsply theCharVar;
P1261();
P166();
P536();
return;