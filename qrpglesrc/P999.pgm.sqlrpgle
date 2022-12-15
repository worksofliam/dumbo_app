**free

ctl-opt dftactgrp(*no);

dcl-pi P999;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P619.rpgleinc'
/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds theTable extname('T1080') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1080 LIMIT 1;

theCharVar = 'Hello from P999';
dsply theCharVar;
P619();
P711();
P45();
return;