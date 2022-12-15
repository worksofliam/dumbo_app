**free

ctl-opt dftactgrp(*no);

dcl-pi P3416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P361.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'

dcl-ds theTable extname('T329') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T329 LIMIT 1;

theCharVar = 'Hello from P3416';
dsply theCharVar;
P361();
P950();
P309();
return;