**free

ctl-opt dftactgrp(*no);

dcl-pi P41;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T959') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T959 LIMIT 1;

theCharVar = 'Hello from P41';
dsply theCharVar;
P3();
P29();
P2();
return;