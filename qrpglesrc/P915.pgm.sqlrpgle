**free

ctl-opt dftactgrp(*no);

dcl-pi P915;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds theTable extname('T255') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T255 LIMIT 1;

theCharVar = 'Hello from P915';
dsply theCharVar;
P147();
P417();
P386();
return;