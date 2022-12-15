**free

ctl-opt dftactgrp(*no);

dcl-pi P855;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P422.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds theTable extname('T168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T168 LIMIT 1;

theCharVar = 'Hello from P855';
dsply theCharVar;
P422();
P225();
P118();
return;