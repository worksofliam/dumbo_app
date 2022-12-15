**free

ctl-opt dftactgrp(*no);

dcl-pi P587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P462.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'

dcl-ds theTable extname('T1306') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1306 LIMIT 1;

theCharVar = 'Hello from P587';
dsply theCharVar;
P281();
P462();
P507();
return;