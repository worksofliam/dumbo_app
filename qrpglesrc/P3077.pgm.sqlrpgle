**free

ctl-opt dftactgrp(*no);

dcl-pi P3077;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1287.rpgleinc'
/copy 'qrpgleref/P2571.rpgleinc'
/copy 'qrpgleref/P2998.rpgleinc'

dcl-ds theTable extname('T938') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T938 LIMIT 1;

theCharVar = 'Hello from P3077';
dsply theCharVar;
P1287();
P2571();
P2998();
return;