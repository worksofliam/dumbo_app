**free

ctl-opt dftactgrp(*no);

dcl-pi P3951;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P3546.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'

dcl-ds theTable extname('T1616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1616 LIMIT 1;

theCharVar = 'Hello from P3951';
dsply theCharVar;
P286();
P3546();
P729();
return;