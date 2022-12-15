**free

ctl-opt dftactgrp(*no);

dcl-pi P4121;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2463.rpgleinc'
/copy 'qrpgleref/P2709.rpgleinc'
/copy 'qrpgleref/P3622.rpgleinc'

dcl-ds theTable extname('T899') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T899 LIMIT 1;

theCharVar = 'Hello from P4121';
dsply theCharVar;
P2463();
P2709();
P3622();
return;