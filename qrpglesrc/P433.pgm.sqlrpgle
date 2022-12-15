**free

ctl-opt dftactgrp(*no);

dcl-pi P433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T228') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T228 LIMIT 1;

theCharVar = 'Hello from P433';
dsply theCharVar;
P144();
P362();
P29();
return;