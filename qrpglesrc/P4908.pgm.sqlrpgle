**free

ctl-opt dftactgrp(*no);

dcl-pi P4908;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1363.rpgleinc'
/copy 'qrpgleref/P2716.rpgleinc'
/copy 'qrpgleref/P4205.rpgleinc'

dcl-ds theTable extname('T1316') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1316 LIMIT 1;

theCharVar = 'Hello from P4908';
dsply theCharVar;
P1363();
P2716();
P4205();
return;