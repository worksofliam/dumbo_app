**free

ctl-opt dftactgrp(*no);

dcl-pi P3240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P2388.rpgleinc'
/copy 'qrpgleref/P3095.rpgleinc'

dcl-ds theTable extname('T577') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T577 LIMIT 1;

theCharVar = 'Hello from P3240';
dsply theCharVar;
P43();
P2388();
P3095();
return;