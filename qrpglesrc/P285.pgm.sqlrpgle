**free

ctl-opt dftactgrp(*no);

dcl-pi P285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P267.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'

dcl-ds theTable extname('T1596') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1596 LIMIT 1;

theCharVar = 'Hello from P285';
dsply theCharVar;
P267();
P225();
P163();
return;