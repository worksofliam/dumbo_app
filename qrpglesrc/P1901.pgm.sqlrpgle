**free

ctl-opt dftactgrp(*no);

dcl-pi P1901;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P625.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds theTable extname('T1567') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1567 LIMIT 1;

theCharVar = 'Hello from P1901';
dsply theCharVar;
P542();
P625();
P340();
return;