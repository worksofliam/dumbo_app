**free

ctl-opt dftactgrp(*no);

dcl-pi P2424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P685.rpgleinc'

dcl-ds theTable extname('T1702') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1702 LIMIT 1;

theCharVar = 'Hello from P2424';
dsply theCharVar;
P980();
P890();
P685();
return;