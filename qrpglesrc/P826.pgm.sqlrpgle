**free

ctl-opt dftactgrp(*no);

dcl-pi P826;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds theTable extname('T851') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T851 LIMIT 1;

theCharVar = 'Hello from P826';
dsply theCharVar;
P378();
P798();
P53();
return;