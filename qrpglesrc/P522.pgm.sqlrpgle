**free

ctl-opt dftactgrp(*no);

dcl-pi P522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'

dcl-ds theTable extname('T444') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T444 LIMIT 1;

theCharVar = 'Hello from P522';
dsply theCharVar;
P438();
P344();
P515();
return;