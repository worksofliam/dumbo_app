**free

ctl-opt dftactgrp(*no);

dcl-pi P678;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'

dcl-ds theTable extname('T214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T214 LIMIT 1;

theCharVar = 'Hello from P678';
dsply theCharVar;
P437();
P357();
P501();
return;