**free

ctl-opt dftactgrp(*no);

dcl-pi P799;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P528.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P686.rpgleinc'

dcl-ds theTable extname('T554') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T554 LIMIT 1;

theCharVar = 'Hello from P799';
dsply theCharVar;
P528();
P54();
P686();
return;