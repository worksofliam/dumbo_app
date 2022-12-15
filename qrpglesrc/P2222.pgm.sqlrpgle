**free

ctl-opt dftactgrp(*no);

dcl-pi P2222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P1397.rpgleinc'

dcl-ds theTable extname('T517') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T517 LIMIT 1;

theCharVar = 'Hello from P2222';
dsply theCharVar;
P459();
P561();
P1397();
return;