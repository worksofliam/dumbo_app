**free

ctl-opt dftactgrp(*no);

dcl-pi P1086;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1081.rpgleinc'
/copy 'qrpgleref/P1028.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'

dcl-ds theTable extname('T955') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T955 LIMIT 1;

theCharVar = 'Hello from P1086';
dsply theCharVar;
P1081();
P1028();
P501();
return;