**free

ctl-opt dftactgrp(*no);

dcl-pi P714;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'

dcl-ds theTable extname('T1786') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1786 LIMIT 1;

theCharVar = 'Hello from P714';
dsply theCharVar;
P433();
P212();
P380();
return;