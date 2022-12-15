**free

ctl-opt dftactgrp(*no);

dcl-pi P984;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P782.rpgleinc'
/copy 'qrpgleref/P368.rpgleinc'

dcl-ds theTable extname('T1496') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1496 LIMIT 1;

theCharVar = 'Hello from P984';
dsply theCharVar;
P264();
P782();
P368();
return;