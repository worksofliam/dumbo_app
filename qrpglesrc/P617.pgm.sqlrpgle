**free

ctl-opt dftactgrp(*no);

dcl-pi P617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P536.rpgleinc'

dcl-ds theTable extname('T191') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T191 LIMIT 1;

theCharVar = 'Hello from P617';
dsply theCharVar;
P488();
P477();
P536();
return;