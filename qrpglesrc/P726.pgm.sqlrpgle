**free

ctl-opt dftactgrp(*no);

dcl-pi P726;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P319.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'

dcl-ds theTable extname('T189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T189 LIMIT 1;

theCharVar = 'Hello from P726';
dsply theCharVar;
P319();
P531();
P334();
return;