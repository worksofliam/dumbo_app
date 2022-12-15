**free

ctl-opt dftactgrp(*no);

dcl-pi P689;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P673.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'

dcl-ds theTable extname('T133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T133 LIMIT 1;

theCharVar = 'Hello from P689';
dsply theCharVar;
P552();
P673();
P270();
return;