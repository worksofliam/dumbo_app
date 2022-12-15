**free

ctl-opt dftactgrp(*no);

dcl-pi P346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P312.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P346';
dsply theCharVar;
P312();
P72();
P48();
return;