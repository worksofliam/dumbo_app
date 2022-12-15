**free

ctl-opt dftactgrp(*no);

dcl-pi P561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'

dcl-ds theTable extname('T482') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T482 LIMIT 1;

theCharVar = 'Hello from P561';
dsply theCharVar;
P62();
P326();
P275();
return;