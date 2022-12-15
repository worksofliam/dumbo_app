**free

ctl-opt dftactgrp(*no);

dcl-pi P4573;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2727.rpgleinc'
/copy 'qrpgleref/P3774.rpgleinc'
/copy 'qrpgleref/P3496.rpgleinc'

dcl-ds theTable extname('T251') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T251 LIMIT 1;

theCharVar = 'Hello from P4573';
dsply theCharVar;
P2727();
P3774();
P3496();
return;