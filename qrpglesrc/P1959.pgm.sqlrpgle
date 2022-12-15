**free

ctl-opt dftactgrp(*no);

dcl-pi P1959;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P960.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P1003.rpgleinc'

dcl-ds theTable extname('T1155') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1155 LIMIT 1;

theCharVar = 'Hello from P1959';
dsply theCharVar;
P960();
P145();
P1003();
return;