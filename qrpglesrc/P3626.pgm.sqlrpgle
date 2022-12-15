**free

ctl-opt dftactgrp(*no);

dcl-pi P3626;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P764.rpgleinc'
/copy 'qrpgleref/P1159.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'

dcl-ds theTable extname('T943') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T943 LIMIT 1;

theCharVar = 'Hello from P3626';
dsply theCharVar;
P764();
P1159();
P553();
return;