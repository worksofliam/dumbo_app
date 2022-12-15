**free

ctl-opt dftactgrp(*no);

dcl-pi P555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'

dcl-ds theTable extname('T458') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T458 LIMIT 1;

theCharVar = 'Hello from P555';
dsply theCharVar;
P507();
P284();
P248();
return;