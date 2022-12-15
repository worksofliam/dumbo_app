**free

ctl-opt dftactgrp(*no);

dcl-pi P1772;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1190.rpgleinc'
/copy 'qrpgleref/P1570.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds theTable extname('T986') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T986 LIMIT 1;

theCharVar = 'Hello from P1772';
dsply theCharVar;
P1190();
P1570();
P458();
return;