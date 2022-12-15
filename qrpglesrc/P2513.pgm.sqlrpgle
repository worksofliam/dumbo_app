**free

ctl-opt dftactgrp(*no);

dcl-pi P2513;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1241.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'

dcl-ds theTable extname('T307') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T307 LIMIT 1;

theCharVar = 'Hello from P2513';
dsply theCharVar;
P1241();
P394();
P559();
return;