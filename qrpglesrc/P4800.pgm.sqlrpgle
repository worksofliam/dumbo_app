**free

ctl-opt dftactgrp(*no);

dcl-pi P4800;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3525.rpgleinc'
/copy 'qrpgleref/P1064.rpgleinc'
/copy 'qrpgleref/P3441.rpgleinc'

dcl-ds theTable extname('T811') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T811 LIMIT 1;

theCharVar = 'Hello from P4800';
dsply theCharVar;
P3525();
P1064();
P3441();
return;