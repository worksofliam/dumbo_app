**free

ctl-opt dftactgrp(*no);

dcl-pi P3296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2794.rpgleinc'
/copy 'qrpgleref/P1857.rpgleinc'
/copy 'qrpgleref/P191.rpgleinc'

dcl-ds theTable extname('T60') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T60 LIMIT 1;

theCharVar = 'Hello from P3296';
dsply theCharVar;
P2794();
P1857();
P191();
return;