**free

ctl-opt dftactgrp(*no);

dcl-pi P419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'

dcl-ds theTable extname('T179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T179 LIMIT 1;

theCharVar = 'Hello from P419';
dsply theCharVar;
P146();
P82();
P84();
return;