**free

ctl-opt dftactgrp(*no);

dcl-pi P3662;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1875.rpgleinc'
/copy 'qrpgleref/P1357.rpgleinc'
/copy 'qrpgleref/P1207.rpgleinc'

dcl-ds theTable extname('T1827') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1827 LIMIT 1;

theCharVar = 'Hello from P3662';
dsply theCharVar;
P1875();
P1357();
P1207();
return;