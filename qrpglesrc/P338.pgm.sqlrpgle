**free

ctl-opt dftactgrp(*no);

dcl-pi P338;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'

dcl-ds theTable extname('T151') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T151 LIMIT 1;

theCharVar = 'Hello from P338';
dsply theCharVar;
P107();
P334();
P195();
return;