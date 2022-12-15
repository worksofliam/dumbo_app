**free

ctl-opt dftactgrp(*no);

dcl-pi P133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'

dcl-ds theTable extname('T1117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1117 LIMIT 1;

theCharVar = 'Hello from P133';
dsply theCharVar;
P44();
P55();
P86();
return;