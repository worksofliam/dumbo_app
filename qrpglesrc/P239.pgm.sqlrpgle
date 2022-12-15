**free

ctl-opt dftactgrp(*no);

dcl-pi P239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'

dcl-ds theTable extname('T236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T236 LIMIT 1;

theCharVar = 'Hello from P239';
dsply theCharVar;
P21();
P213();
return;