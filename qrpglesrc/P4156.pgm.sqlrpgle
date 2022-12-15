**free

ctl-opt dftactgrp(*no);

dcl-pi P4156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2590.rpgleinc'
/copy 'qrpgleref/P3510.rpgleinc'
/copy 'qrpgleref/P3287.rpgleinc'

dcl-ds theTable extname('T38') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T38 LIMIT 1;

theCharVar = 'Hello from P4156';
dsply theCharVar;
P2590();
P3510();
P3287();
return;