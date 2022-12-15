**free

ctl-opt dftactgrp(*no);

dcl-pi P5112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3204.rpgleinc'
/copy 'qrpgleref/P3476.rpgleinc'
/copy 'qrpgleref/P679.rpgleinc'

dcl-ds theTable extname('T694') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T694 LIMIT 1;

theCharVar = 'Hello from P5112';
dsply theCharVar;
P3204();
P3476();
P679();
return;