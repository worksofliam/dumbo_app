**free

ctl-opt dftactgrp(*no);

dcl-pi P183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds theTable extname('T10') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T10 LIMIT 1;

theCharVar = 'Hello from P183';
dsply theCharVar;
P3();
P87();
P58();
return;