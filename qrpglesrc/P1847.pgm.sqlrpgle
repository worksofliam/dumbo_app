**free

ctl-opt dftactgrp(*no);

dcl-pi P1847;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P1746.rpgleinc'
/copy 'qrpgleref/P1390.rpgleinc'

dcl-ds theTable extname('T582') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T582 LIMIT 1;

theCharVar = 'Hello from P1847';
dsply theCharVar;
P443();
P1746();
P1390();
return;