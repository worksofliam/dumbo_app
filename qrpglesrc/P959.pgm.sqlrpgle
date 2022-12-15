**free

ctl-opt dftactgrp(*no);

dcl-pi P959;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P643.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'

dcl-ds theTable extname('T982') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T982 LIMIT 1;

theCharVar = 'Hello from P959';
dsply theCharVar;
P643();
P145();
P802();
return;