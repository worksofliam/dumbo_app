**free

ctl-opt dftactgrp(*no);

dcl-pi P2693;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1202.rpgleinc'
/copy 'qrpgleref/P1459.rpgleinc'
/copy 'qrpgleref/P747.rpgleinc'

dcl-ds theTable extname('T394') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T394 LIMIT 1;

theCharVar = 'Hello from P2693';
dsply theCharVar;
P1202();
P1459();
P747();
return;