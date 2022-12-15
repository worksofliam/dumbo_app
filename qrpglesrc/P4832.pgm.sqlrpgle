**free

ctl-opt dftactgrp(*no);

dcl-pi P4832;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3064.rpgleinc'
/copy 'qrpgleref/P4009.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds theTable extname('T1522') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1522 LIMIT 1;

theCharVar = 'Hello from P4832';
dsply theCharVar;
P3064();
P4009();
P90();
return;