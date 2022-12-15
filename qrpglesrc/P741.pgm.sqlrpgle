**free

ctl-opt dftactgrp(*no);

dcl-pi P741;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds theTable extname('T29') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T29 LIMIT 1;

theCharVar = 'Hello from P741';
dsply theCharVar;
P315();
P396();
P294();
return;