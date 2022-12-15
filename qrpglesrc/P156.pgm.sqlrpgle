**free

ctl-opt dftactgrp(*no);

dcl-pi P156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds theTable extname('T17') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T17 LIMIT 1;

theCharVar = 'Hello from P156';
dsply theCharVar;
P69();
P54();
P114();
return;