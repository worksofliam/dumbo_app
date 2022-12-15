**free

ctl-opt dftactgrp(*no);

dcl-pi P843;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'

dcl-ds theTable extname('T1041') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1041 LIMIT 1;

theCharVar = 'Hello from P843';
dsply theCharVar;
P186();
P781();
P551();
return;