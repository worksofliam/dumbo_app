**free

ctl-opt dftactgrp(*no);

dcl-pi P4867;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1207.rpgleinc'
/copy 'qrpgleref/P4776.rpgleinc'
/copy 'qrpgleref/P1588.rpgleinc'

dcl-ds theTable extname('T1126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1126 LIMIT 1;

theCharVar = 'Hello from P4867';
dsply theCharVar;
P1207();
P4776();
P1588();
return;