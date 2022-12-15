**free

ctl-opt dftactgrp(*no);

dcl-pi P3580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P2257.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds theTable extname('T1383') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1383 LIMIT 1;

theCharVar = 'Hello from P3580';
dsply theCharVar;
P9();
P2257();
P115();
return;