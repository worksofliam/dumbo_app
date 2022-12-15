**free

ctl-opt dftactgrp(*no);

dcl-pi P760;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T322') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T322 LIMIT 1;

theCharVar = 'Hello from P760';
dsply theCharVar;
P700();
P711();
P43();
return;