**free

ctl-opt dftactgrp(*no);

dcl-pi P2644;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1070.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P973.rpgleinc'

dcl-ds theTable extname('T1539') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1539 LIMIT 1;

theCharVar = 'Hello from P2644';
dsply theCharVar;
P1070();
P106();
P973();
return;