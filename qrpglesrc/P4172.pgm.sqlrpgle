**free

ctl-opt dftactgrp(*no);

dcl-pi P4172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1404.rpgleinc'
/copy 'qrpgleref/P3892.rpgleinc'
/copy 'qrpgleref/P2627.rpgleinc'

dcl-ds theTable extname('T829') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T829 LIMIT 1;

theCharVar = 'Hello from P4172';
dsply theCharVar;
P1404();
P3892();
P2627();
return;