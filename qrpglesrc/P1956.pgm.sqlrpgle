**free

ctl-opt dftactgrp(*no);

dcl-pi P1956;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1163.rpgleinc'
/copy 'qrpgleref/P1805.rpgleinc'
/copy 'qrpgleref/P312.rpgleinc'

dcl-ds theTable extname('T207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T207 LIMIT 1;

theCharVar = 'Hello from P1956';
dsply theCharVar;
P1163();
P1805();
P312();
return;