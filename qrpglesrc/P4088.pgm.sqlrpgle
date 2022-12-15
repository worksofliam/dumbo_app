**free

ctl-opt dftactgrp(*no);

dcl-pi P4088;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3097.rpgleinc'
/copy 'qrpgleref/P2533.rpgleinc'
/copy 'qrpgleref/P3192.rpgleinc'

dcl-ds theTable extname('T444') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T444 LIMIT 1;

theCharVar = 'Hello from P4088';
dsply theCharVar;
P3097();
P2533();
P3192();
return;