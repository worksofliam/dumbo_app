**free

ctl-opt dftactgrp(*no);

dcl-pi P594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P475.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'

dcl-ds theTable extname('T512') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T512 LIMIT 1;

theCharVar = 'Hello from P594';
dsply theCharVar;
P157();
P475();
P410();
return;