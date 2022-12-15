**free

ctl-opt dftactgrp(*no);

dcl-pi P3914;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1761.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'
/copy 'qrpgleref/P3002.rpgleinc'

dcl-ds theTable extname('T361') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T361 LIMIT 1;

theCharVar = 'Hello from P3914';
dsply theCharVar;
P1761();
P1783();
P3002();
return;