**free

ctl-opt dftactgrp(*no);

dcl-pi P4599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4251.rpgleinc'
/copy 'qrpgleref/P3025.rpgleinc'
/copy 'qrpgleref/P740.rpgleinc'

dcl-ds theTable extname('T771') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T771 LIMIT 1;

theCharVar = 'Hello from P4599';
dsply theCharVar;
P4251();
P3025();
P740();
return;