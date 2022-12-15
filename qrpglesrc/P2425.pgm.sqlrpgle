**free

ctl-opt dftactgrp(*no);

dcl-pi P2425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P790.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P1237.rpgleinc'

dcl-ds theTable extname('T911') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T911 LIMIT 1;

theCharVar = 'Hello from P2425';
dsply theCharVar;
P790();
P341();
P1237();
return;