**free

ctl-opt dftactgrp(*no);

dcl-pi P2690;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2022.rpgleinc'
/copy 'qrpgleref/P1444.rpgleinc'
/copy 'qrpgleref/P1410.rpgleinc'

dcl-ds theTable extname('T645') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T645 LIMIT 1;

theCharVar = 'Hello from P2690';
dsply theCharVar;
P2022();
P1444();
P1410();
return;