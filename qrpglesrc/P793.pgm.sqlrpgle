**free

ctl-opt dftactgrp(*no);

dcl-pi P793;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'

dcl-ds theTable extname('T25') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T25 LIMIT 1;

theCharVar = 'Hello from P793';
dsply theCharVar;
P522();
P497();
P621();
return;