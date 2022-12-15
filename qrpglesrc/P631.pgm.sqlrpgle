**free

ctl-opt dftactgrp(*no);

dcl-pi P631;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'
/copy 'qrpgleref/P599.rpgleinc'

dcl-ds theTable extname('T1397') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1397 LIMIT 1;

theCharVar = 'Hello from P631';
dsply theCharVar;
P443();
P302();
P599();
return;