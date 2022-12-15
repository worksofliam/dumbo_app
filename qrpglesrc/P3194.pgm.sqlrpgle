**free

ctl-opt dftactgrp(*no);

dcl-pi P3194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P436.rpgleinc'
/copy 'qrpgleref/P3016.rpgleinc'
/copy 'qrpgleref/P735.rpgleinc'

dcl-ds theTable extname('T1533') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1533 LIMIT 1;

theCharVar = 'Hello from P3194';
dsply theCharVar;
P436();
P3016();
P735();
return;