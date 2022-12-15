**free

ctl-opt dftactgrp(*no);

dcl-pi P741;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P644.rpgleinc'

dcl-ds theTable extname('T331') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T331 LIMIT 1;

theCharVar = 'Hello from P741';
dsply theCharVar;
P183();
P627();
P644();
return;