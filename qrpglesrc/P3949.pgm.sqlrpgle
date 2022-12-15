**free

ctl-opt dftactgrp(*no);

dcl-pi P3949;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P3095.rpgleinc'
/copy 'qrpgleref/P1935.rpgleinc'

dcl-ds theTable extname('T1114') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1114 LIMIT 1;

theCharVar = 'Hello from P3949';
dsply theCharVar;
P396();
P3095();
P1935();
return;