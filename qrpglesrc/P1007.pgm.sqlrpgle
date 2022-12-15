**free

ctl-opt dftactgrp(*no);

dcl-pi P1007;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P713.rpgleinc'

dcl-ds theTable extname('T677') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T677 LIMIT 1;

theCharVar = 'Hello from P1007';
dsply theCharVar;
P78();
P697();
P713();
return;