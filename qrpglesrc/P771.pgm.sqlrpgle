**free

ctl-opt dftactgrp(*no);

dcl-pi P771;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'

dcl-ds theTable extname('T1426') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1426 LIMIT 1;

theCharVar = 'Hello from P771';
dsply theCharVar;
P652();
P301();
P252();
return;