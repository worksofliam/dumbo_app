**free

ctl-opt dftactgrp(*no);

dcl-pi P5210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4713.rpgleinc'
/copy 'qrpgleref/P2045.rpgleinc'
/copy 'qrpgleref/P1514.rpgleinc'

dcl-ds theTable extname('T1028') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1028 LIMIT 1;

theCharVar = 'Hello from P5210';
dsply theCharVar;
P4713();
P2045();
P1514();
return;