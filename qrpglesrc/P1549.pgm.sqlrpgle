**free

ctl-opt dftactgrp(*no);

dcl-pi P1549;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P1200.rpgleinc'

dcl-ds theTable extname('T483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T483 LIMIT 1;

theCharVar = 'Hello from P1549';
dsply theCharVar;
P863();
P585();
P1200();
return;