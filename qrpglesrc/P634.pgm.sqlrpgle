**free

ctl-opt dftactgrp(*no);

dcl-pi P634;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds theTable extname('T1183') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1183 LIMIT 1;

theCharVar = 'Hello from P634';
dsply theCharVar;
P561();
P213();
P178();
return;