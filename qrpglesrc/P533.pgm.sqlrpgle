**free

ctl-opt dftactgrp(*no);

dcl-pi P533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds theTable extname('T1550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1550 LIMIT 1;

theCharVar = 'Hello from P533';
dsply theCharVar;
P357();
P55();
P20();
return;