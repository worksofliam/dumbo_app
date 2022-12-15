**free

ctl-opt dftactgrp(*no);

dcl-pi P4593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1111.rpgleinc'
/copy 'qrpgleref/P4522.rpgleinc'
/copy 'qrpgleref/P1925.rpgleinc'

dcl-ds theTable extname('T1198') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1198 LIMIT 1;

theCharVar = 'Hello from P4593';
dsply theCharVar;
P1111();
P4522();
P1925();
return;