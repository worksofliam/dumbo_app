**free

ctl-opt dftactgrp(*no);

dcl-pi P4040;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3088.rpgleinc'
/copy 'qrpgleref/P3249.rpgleinc'
/copy 'qrpgleref/P2830.rpgleinc'

dcl-ds theTable extname('T541') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T541 LIMIT 1;

theCharVar = 'Hello from P4040';
dsply theCharVar;
P3088();
P3249();
P2830();
return;