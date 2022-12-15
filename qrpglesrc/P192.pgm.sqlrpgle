**free

ctl-opt dftactgrp(*no);

dcl-pi P192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds theTable extname('T1151') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1151 LIMIT 1;

theCharVar = 'Hello from P192';
dsply theCharVar;
P30();
P13();
P105();
return;