**free

ctl-opt dftactgrp(*no);

dcl-pi P491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'

dcl-ds theTable extname('T176') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T176 LIMIT 1;

theCharVar = 'Hello from P491';
dsply theCharVar;
P130();
P72();
P141();
return;