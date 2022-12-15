**free

ctl-opt dftactgrp(*no);

dcl-pi P144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T1598') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1598 LIMIT 1;

theCharVar = 'Hello from P144';
dsply theCharVar;
P127();
P45();
P0();
return;