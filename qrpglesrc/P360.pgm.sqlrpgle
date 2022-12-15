**free

ctl-opt dftactgrp(*no);

dcl-pi P360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds theTable extname('T890') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T890 LIMIT 1;

theCharVar = 'Hello from P360';
dsply theCharVar;
P278();
P340();
P53();
return;