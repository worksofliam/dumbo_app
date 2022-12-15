**free

ctl-opt dftactgrp(*no);

dcl-pi P3748;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P1625.rpgleinc'
/copy 'qrpgleref/P3066.rpgleinc'

dcl-ds theTable extname('T1600') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1600 LIMIT 1;

theCharVar = 'Hello from P3748';
dsply theCharVar;
P863();
P1625();
P3066();
return;