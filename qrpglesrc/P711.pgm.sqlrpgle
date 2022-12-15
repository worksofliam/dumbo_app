**free

ctl-opt dftactgrp(*no);

dcl-pi P711;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P660.rpgleinc'
/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P599.rpgleinc'

dcl-ds theTable extname('T888') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T888 LIMIT 1;

theCharVar = 'Hello from P711';
dsply theCharVar;
P660();
P477();
P599();
return;