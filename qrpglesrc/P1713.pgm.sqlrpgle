**free

ctl-opt dftactgrp(*no);

dcl-pi P1713;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1652.rpgleinc'
/copy 'qrpgleref/P822.rpgleinc'
/copy 'qrpgleref/P536.rpgleinc'

dcl-ds theTable extname('T969') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T969 LIMIT 1;

theCharVar = 'Hello from P1713';
dsply theCharVar;
P1652();
P822();
P536();
return;