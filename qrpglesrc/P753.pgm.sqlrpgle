**free

ctl-opt dftactgrp(*no);

dcl-pi P753;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P565.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'

dcl-ds theTable extname('T900') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T900 LIMIT 1;

theCharVar = 'Hello from P753';
dsply theCharVar;
P565();
P549();
P554();
return;