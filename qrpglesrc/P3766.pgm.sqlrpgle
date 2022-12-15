**free

ctl-opt dftactgrp(*no);

dcl-pi P3766;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2771.rpgleinc'
/copy 'qrpgleref/P2376.rpgleinc'
/copy 'qrpgleref/P1145.rpgleinc'

dcl-ds theTable extname('T1479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1479 LIMIT 1;

theCharVar = 'Hello from P3766';
dsply theCharVar;
P2771();
P2376();
P1145();
return;