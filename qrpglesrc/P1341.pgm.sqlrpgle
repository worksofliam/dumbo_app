**free

ctl-opt dftactgrp(*no);

dcl-pi P1341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1239.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'
/copy 'qrpgleref/P843.rpgleinc'

dcl-ds theTable extname('T228') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T228 LIMIT 1;

theCharVar = 'Hello from P1341';
dsply theCharVar;
P1239();
P694();
P843();
return;