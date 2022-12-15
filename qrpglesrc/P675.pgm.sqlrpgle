**free

ctl-opt dftactgrp(*no);

dcl-pi P675;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'

dcl-ds theTable extname('T15') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T15 LIMIT 1;

theCharVar = 'Hello from P675';
dsply theCharVar;
P412();
P401();
P93();
return;