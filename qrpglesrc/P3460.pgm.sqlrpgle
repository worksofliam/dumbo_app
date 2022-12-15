**free

ctl-opt dftactgrp(*no);

dcl-pi P3460;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P761.rpgleinc'
/copy 'qrpgleref/P3310.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'

dcl-ds theTable extname('T323') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T323 LIMIT 1;

theCharVar = 'Hello from P3460';
dsply theCharVar;
P761();
P3310();
P612();
return;