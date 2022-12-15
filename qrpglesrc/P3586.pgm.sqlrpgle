**free

ctl-opt dftactgrp(*no);

dcl-pi P3586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P1255.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T164 LIMIT 1;

theCharVar = 'Hello from P3586';
dsply theCharVar;
P192();
P1255();
P40();
return;