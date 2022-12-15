**free

ctl-opt dftactgrp(*no);

dcl-pi P1364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P960.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P1038.rpgleinc'

dcl-ds theTable extname('T1566') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1566 LIMIT 1;

theCharVar = 'Hello from P1364';
dsply theCharVar;
P960();
P362();
P1038();
return;