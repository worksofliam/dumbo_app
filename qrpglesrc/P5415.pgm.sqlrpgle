**free

ctl-opt dftactgrp(*no);

dcl-pi P5415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3149.rpgleinc'
/copy 'qrpgleref/P3721.rpgleinc'
/copy 'qrpgleref/P3969.rpgleinc'

dcl-ds theTable extname('T1213') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1213 LIMIT 1;

theCharVar = 'Hello from P5415';
dsply theCharVar;
P3149();
P3721();
P3969();
return;