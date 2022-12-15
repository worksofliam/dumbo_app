**free

ctl-opt dftactgrp(*no);

dcl-pi P3152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2604.rpgleinc'
/copy 'qrpgleref/P2450.rpgleinc'
/copy 'qrpgleref/P578.rpgleinc'

dcl-ds theTable extname('T1306') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1306 LIMIT 1;

theCharVar = 'Hello from P3152';
dsply theCharVar;
P2604();
P2450();
P578();
return;