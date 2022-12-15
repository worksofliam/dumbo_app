**free

ctl-opt dftactgrp(*no);

dcl-pi P319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T1830') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1830 LIMIT 1;

theCharVar = 'Hello from P319';
dsply theCharVar;
P284();
P12();
P19();
return;