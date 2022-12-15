**free

ctl-opt dftactgrp(*no);

dcl-pi P1611;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1168.rpgleinc'
/copy 'qrpgleref/P1566.rpgleinc'
/copy 'qrpgleref/P853.rpgleinc'

dcl-ds theTable extname('T614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T614 LIMIT 1;

theCharVar = 'Hello from P1611';
dsply theCharVar;
P1168();
P1566();
P853();
return;