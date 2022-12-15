**free

ctl-opt dftactgrp(*no);

dcl-pi P793;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'

dcl-ds theTable extname('T556') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T556 LIMIT 1;

theCharVar = 'Hello from P793';
dsply theCharVar;
P94();
P621();
P652();
return;