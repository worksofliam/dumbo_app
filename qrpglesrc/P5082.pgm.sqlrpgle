**free

ctl-opt dftactgrp(*no);

dcl-pi P5082;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1905.rpgleinc'
/copy 'qrpgleref/P1198.rpgleinc'
/copy 'qrpgleref/P2328.rpgleinc'

dcl-ds theTable extname('T339') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T339 LIMIT 1;

theCharVar = 'Hello from P5082';
dsply theCharVar;
P1905();
P1198();
P2328();
return;