**free

ctl-opt dftactgrp(*no);

dcl-pi P641;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'

dcl-ds theTable extname('T1082') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1082 LIMIT 1;

theCharVar = 'Hello from P641';
dsply theCharVar;
P36();
P272();
P596();
return;