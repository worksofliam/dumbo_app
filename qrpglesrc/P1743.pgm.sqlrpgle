**free

ctl-opt dftactgrp(*no);

dcl-pi P1743;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P1649.rpgleinc'

dcl-ds theTable extname('T1236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1236 LIMIT 1;

theCharVar = 'Hello from P1743';
dsply theCharVar;
P337();
P101();
P1649();
return;