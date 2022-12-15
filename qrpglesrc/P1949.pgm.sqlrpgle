**free

ctl-opt dftactgrp(*no);

dcl-pi P1949;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1459.rpgleinc'
/copy 'qrpgleref/P1727.rpgleinc'
/copy 'qrpgleref/P825.rpgleinc'

dcl-ds theTable extname('T1069') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1069 LIMIT 1;

theCharVar = 'Hello from P1949';
dsply theCharVar;
P1459();
P1727();
P825();
return;