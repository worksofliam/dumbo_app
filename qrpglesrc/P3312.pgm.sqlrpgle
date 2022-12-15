**free

ctl-opt dftactgrp(*no);

dcl-pi P3312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3188.rpgleinc'
/copy 'qrpgleref/P1852.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'

dcl-ds theTable extname('T811') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T811 LIMIT 1;

theCharVar = 'Hello from P3312';
dsply theCharVar;
P3188();
P1852();
P1051();
return;