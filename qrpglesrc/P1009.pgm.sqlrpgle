**free

ctl-opt dftactgrp(*no);

dcl-pi P1009;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'

dcl-ds theTable extname('T592') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T592 LIMIT 1;

theCharVar = 'Hello from P1009';
dsply theCharVar;
P561();
P104();
P315();
return;