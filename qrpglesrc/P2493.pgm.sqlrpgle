**free

ctl-opt dftactgrp(*no);

dcl-pi P2493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P1200.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'

dcl-ds theTable extname('T1157') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1157 LIMIT 1;

theCharVar = 'Hello from P2493';
dsply theCharVar;
P591();
P1200();
P443();
return;