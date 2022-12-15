**free

ctl-opt dftactgrp(*no);

dcl-pi P2660;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P867.rpgleinc'
/copy 'qrpgleref/P2313.rpgleinc'
/copy 'qrpgleref/P2060.rpgleinc'

dcl-ds theTable extname('T1225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1225 LIMIT 1;

theCharVar = 'Hello from P2660';
dsply theCharVar;
P867();
P2313();
P2060();
return;