**free

ctl-opt dftactgrp(*no);

dcl-pi P429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'

dcl-ds theTable extname('T284') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T284 LIMIT 1;

theCharVar = 'Hello from P429';
dsply theCharVar;
P365();
P313();
P353();
return;