**free

ctl-opt dftactgrp(*no);

dcl-pi P1400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1206.rpgleinc'
/copy 'qrpgleref/P743.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T992') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T992 LIMIT 1;

theCharVar = 'Hello from P1400';
dsply theCharVar;
P1206();
P743();
P6();
return;