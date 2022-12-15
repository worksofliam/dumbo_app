**free

ctl-opt dftactgrp(*no);

dcl-pi P200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P200';
dsply theCharVar;
P141();
P31();
P171();
return;