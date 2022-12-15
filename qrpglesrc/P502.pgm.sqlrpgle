**free

ctl-opt dftactgrp(*no);

dcl-pi P502;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'

dcl-ds theTable extname('T1733') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1733 LIMIT 1;

theCharVar = 'Hello from P502';
dsply theCharVar;
P11();
P150();
P106();
return;