**free

ctl-opt dftactgrp(*no);

dcl-pi P3163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P862.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'

dcl-ds theTable extname('T270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T270 LIMIT 1;

theCharVar = 'Hello from P3163';
dsply theCharVar;
P862();
P109();
P797();
return;