**free

ctl-opt dftactgrp(*no);

dcl-pi P4672;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2588.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P3996.rpgleinc'

dcl-ds theTable extname('T770') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T770 LIMIT 1;

theCharVar = 'Hello from P4672';
dsply theCharVar;
P2588();
P73();
P3996();
return;