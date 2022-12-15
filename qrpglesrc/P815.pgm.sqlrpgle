**free

ctl-opt dftactgrp(*no);

dcl-pi P815;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'

dcl-ds theTable extname('T1717') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1717 LIMIT 1;

theCharVar = 'Hello from P815';
dsply theCharVar;
P404();
P294();
P417();
return;