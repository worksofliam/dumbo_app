**free

ctl-opt dftactgrp(*no);

dcl-pi P296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T1242') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1242 LIMIT 1;

theCharVar = 'Hello from P296';
dsply theCharVar;
P85();
P287();
P79();
return;