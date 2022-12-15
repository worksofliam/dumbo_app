**free

ctl-opt dftactgrp(*no);

dcl-pi P15;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P15';
dsply theCharVar;
P0();
P9();
return;