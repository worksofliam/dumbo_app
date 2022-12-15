**free

ctl-opt dftactgrp(*no);

dcl-pi P3682;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3618.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P1229.rpgleinc'

dcl-ds theTable extname('T592') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T592 LIMIT 1;

theCharVar = 'Hello from P3682';
dsply theCharVar;
P3618();
P445();
P1229();
return;