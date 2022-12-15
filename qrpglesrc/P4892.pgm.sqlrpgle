**free

ctl-opt dftactgrp(*no);

dcl-pi P4892;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1116.rpgleinc'
/copy 'qrpgleref/P4315.rpgleinc'
/copy 'qrpgleref/P4168.rpgleinc'

dcl-ds theTable extname('T1606') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1606 LIMIT 1;

theCharVar = 'Hello from P4892';
dsply theCharVar;
P1116();
P4315();
P4168();
return;