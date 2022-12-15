**free

ctl-opt dftactgrp(*no);

dcl-pi P2399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2316.rpgleinc'
/copy 'qrpgleref/P2383.rpgleinc'
/copy 'qrpgleref/P1403.rpgleinc'

dcl-ds theTable extname('T337') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T337 LIMIT 1;

theCharVar = 'Hello from P2399';
dsply theCharVar;
P2316();
P2383();
P1403();
return;