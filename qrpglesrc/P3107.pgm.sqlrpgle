**free

ctl-opt dftactgrp(*no);

dcl-pi P3107;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P3006.rpgleinc'
/copy 'qrpgleref/P578.rpgleinc'

dcl-ds theTable extname('T1025') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1025 LIMIT 1;

theCharVar = 'Hello from P3107';
dsply theCharVar;
P50();
P3006();
P578();
return;