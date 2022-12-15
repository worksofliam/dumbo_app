**free

ctl-opt dftactgrp(*no);

dcl-pi P2631;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P2273.rpgleinc'
/copy 'qrpgleref/P1594.rpgleinc'

dcl-ds theTable extname('T198') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T198 LIMIT 1;

theCharVar = 'Hello from P2631';
dsply theCharVar;
P138();
P2273();
P1594();
return;