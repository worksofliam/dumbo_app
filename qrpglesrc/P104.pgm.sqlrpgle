**free

ctl-opt dftactgrp(*no);

dcl-pi P104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T137') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T137 LIMIT 1;

theCharVar = 'Hello from P104';
dsply theCharVar;
P45();
P97();
P19();
return;