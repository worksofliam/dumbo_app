**free

ctl-opt dftactgrp(*no);

dcl-pi P528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T977') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T977 LIMIT 1;

theCharVar = 'Hello from P528';
dsply theCharVar;
P162();
P64();
P277();
return;