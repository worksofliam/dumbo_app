**free

ctl-opt dftactgrp(*no);

dcl-pi P97;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'

dcl-ds theTable extname('T205') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T205 LIMIT 1;

theCharVar = 'Hello from P97';
dsply theCharVar;
P86();
P62();
P32();
return;