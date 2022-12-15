**free

ctl-opt dftactgrp(*no);

dcl-pi P813;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P550.rpgleinc'
/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P726.rpgleinc'

dcl-ds theTable extname('T1465') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1465 LIMIT 1;

theCharVar = 'Hello from P813';
dsply theCharVar;
P550();
P718();
P726();
return;