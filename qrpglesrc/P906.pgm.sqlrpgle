**free

ctl-opt dftactgrp(*no);

dcl-pi P906;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P902.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds theTable extname('T1866') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1866 LIMIT 1;

theCharVar = 'Hello from P906';
dsply theCharVar;
P902();
P263();
P118();
return;