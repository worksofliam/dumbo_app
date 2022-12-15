**free

ctl-opt dftactgrp(*no);

dcl-pi P884;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'

dcl-ds theTable extname('T1279') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1279 LIMIT 1;

theCharVar = 'Hello from P884';
dsply theCharVar;
P211();
P699();
P621();
return;