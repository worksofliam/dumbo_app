**free

ctl-opt dftactgrp(*no);

dcl-pi P738;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T1002') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1002 LIMIT 1;

theCharVar = 'Hello from P738';
dsply theCharVar;
P337();
P74();
P13();
return;