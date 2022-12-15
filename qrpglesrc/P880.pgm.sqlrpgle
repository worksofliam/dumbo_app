**free

ctl-opt dftactgrp(*no);

dcl-pi P880;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P819.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'

dcl-ds theTable extname('T72') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T72 LIMIT 1;

theCharVar = 'Hello from P880';
dsply theCharVar;
P111();
P819();
P810();
return;