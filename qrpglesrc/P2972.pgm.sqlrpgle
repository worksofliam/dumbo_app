**free

ctl-opt dftactgrp(*no);

dcl-pi P2972;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P2377.rpgleinc'
/copy 'qrpgleref/P411.rpgleinc'

dcl-ds theTable extname('T872') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T872 LIMIT 1;

theCharVar = 'Hello from P2972';
dsply theCharVar;
P131();
P2377();
P411();
return;