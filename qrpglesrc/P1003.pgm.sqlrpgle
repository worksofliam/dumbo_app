**free

ctl-opt dftactgrp(*no);

dcl-pi P1003;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'

dcl-ds theTable extname('T344') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T344 LIMIT 1;

theCharVar = 'Hello from P1003';
dsply theCharVar;
P589();
P521();
P148();
return;