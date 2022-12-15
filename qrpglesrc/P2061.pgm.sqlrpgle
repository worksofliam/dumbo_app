**free

ctl-opt dftactgrp(*no);

dcl-pi P2061;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1188.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P1880.rpgleinc'

dcl-ds theTable extname('T1121') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1121 LIMIT 1;

theCharVar = 'Hello from P2061';
dsply theCharVar;
P1188();
P186();
P1880();
return;