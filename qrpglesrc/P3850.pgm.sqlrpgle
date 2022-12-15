**free

ctl-opt dftactgrp(*no);

dcl-pi P3850;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3106.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P3420.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P3850';
dsply theCharVar;
P3106();
P14();
P3420();
return;