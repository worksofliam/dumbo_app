**free

ctl-opt dftactgrp(*no);

dcl-pi P1256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P670.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'

dcl-ds theTable extname('T5') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T5 LIMIT 1;

theCharVar = 'Hello from P1256';
dsply theCharVar;
P736();
P670();
P1042();
return;