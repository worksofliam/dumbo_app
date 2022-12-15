**free

ctl-opt dftactgrp(*no);

dcl-pi P524;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds theTable extname('T513') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T513 LIMIT 1;

theCharVar = 'Hello from P524';
dsply theCharVar;
P139();
P107();
P181();
return;