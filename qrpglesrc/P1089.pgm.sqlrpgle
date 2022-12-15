**free

ctl-opt dftactgrp(*no);

dcl-pi P1089;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P415.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T948') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T948 LIMIT 1;

theCharVar = 'Hello from P1089';
dsply theCharVar;
P358();
P415();
P43();
return;