**free

ctl-opt dftactgrp(*no);

dcl-pi P433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P336.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds theTable extname('T141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T141 LIMIT 1;

theCharVar = 'Hello from P433';
dsply theCharVar;
P336();
P258();
P250();
return;