**free

ctl-opt dftactgrp(*no);

dcl-pi P996;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P805.rpgleinc'
/copy 'qrpgleref/P789.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'

dcl-ds theTable extname('T133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T133 LIMIT 1;

theCharVar = 'Hello from P996';
dsply theCharVar;
P805();
P789();
P212();
return;