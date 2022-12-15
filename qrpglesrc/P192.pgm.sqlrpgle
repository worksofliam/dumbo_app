**free

ctl-opt dftactgrp(*no);

dcl-pi P192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds theTable extname('T211') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T211 LIMIT 1;

theCharVar = 'Hello from P192';
dsply theCharVar;
P125();
P132();
P187();
return;