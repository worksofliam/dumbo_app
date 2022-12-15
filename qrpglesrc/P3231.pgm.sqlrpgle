**free

ctl-opt dftactgrp(*no);

dcl-pi P3231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1615.rpgleinc'
/copy 'qrpgleref/P912.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'

dcl-ds theTable extname('T1012') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1012 LIMIT 1;

theCharVar = 'Hello from P3231';
dsply theCharVar;
P1615();
P912();
P697();
return;