**free

ctl-opt dftactgrp(*no);

dcl-pi P3465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1845.rpgleinc'
/copy 'qrpgleref/P3123.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds theTable extname('T616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T616 LIMIT 1;

theCharVar = 'Hello from P3465';
dsply theCharVar;
P1845();
P3123();
P38();
return;