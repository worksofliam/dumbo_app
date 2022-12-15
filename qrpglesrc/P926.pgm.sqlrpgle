**free

ctl-opt dftactgrp(*no);

dcl-pi P926;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'

dcl-ds theTable extname('T236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T236 LIMIT 1;

theCharVar = 'Hello from P926';
dsply theCharVar;
P451();
P287();
P809();
return;