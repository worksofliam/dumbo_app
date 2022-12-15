**free

ctl-opt dftactgrp(*no);

dcl-pi P5043;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3030.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P4816.rpgleinc'

dcl-ds theTable extname('T54') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T54 LIMIT 1;

theCharVar = 'Hello from P5043';
dsply theCharVar;
P3030();
P362();
P4816();
return;