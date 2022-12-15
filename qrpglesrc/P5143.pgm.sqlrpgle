**free

ctl-opt dftactgrp(*no);

dcl-pi P5143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P3950.rpgleinc'
/copy 'qrpgleref/P492.rpgleinc'

dcl-ds theTable extname('T297') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T297 LIMIT 1;

theCharVar = 'Hello from P5143';
dsply theCharVar;
P339();
P3950();
P492();
return;