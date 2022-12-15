**free

ctl-opt dftactgrp(*no);

dcl-pi P176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds theTable extname('T1680') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1680 LIMIT 1;

theCharVar = 'Hello from P176';
dsply theCharVar;
P87();
P119();
P21();
return;