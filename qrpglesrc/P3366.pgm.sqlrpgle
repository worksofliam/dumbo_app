**free

ctl-opt dftactgrp(*no);

dcl-pi P3366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1061.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P2222.rpgleinc'

dcl-ds theTable extname('T798') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T798 LIMIT 1;

theCharVar = 'Hello from P3366';
dsply theCharVar;
P1061();
P88();
P2222();
return;