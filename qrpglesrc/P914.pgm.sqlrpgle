**free

ctl-opt dftactgrp(*no);

dcl-pi P914;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P717.rpgleinc'
/copy 'qrpgleref/P906.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds theTable extname('T539') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T539 LIMIT 1;

theCharVar = 'Hello from P914';
dsply theCharVar;
P717();
P906();
P295();
return;