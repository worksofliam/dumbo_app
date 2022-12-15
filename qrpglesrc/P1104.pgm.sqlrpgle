**free

ctl-opt dftactgrp(*no);

dcl-pi P1104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P692.rpgleinc'

dcl-ds theTable extname('T208') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T208 LIMIT 1;

theCharVar = 'Hello from P1104';
dsply theCharVar;
P250();
P142();
P692();
return;