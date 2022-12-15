**free

ctl-opt dftactgrp(*no);

dcl-pi P1791;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1235.rpgleinc'
/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P1418.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P1791';
dsply theCharVar;
P1235();
P384();
P1418();
return;