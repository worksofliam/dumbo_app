**free

ctl-opt dftactgrp(*no);

dcl-pi P529;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P202.rpgleinc'

dcl-ds theTable extname('T897') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T897 LIMIT 1;

theCharVar = 'Hello from P529';
dsply theCharVar;
P173();
P216();
P202();
return;