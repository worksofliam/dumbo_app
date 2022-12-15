**free

ctl-opt dftactgrp(*no);

dcl-pi P4763;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3234.rpgleinc'
/copy 'qrpgleref/P3298.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'

dcl-ds theTable extname('T7') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T7 LIMIT 1;

theCharVar = 'Hello from P4763';
dsply theCharVar;
P3234();
P3298();
P77();
return;