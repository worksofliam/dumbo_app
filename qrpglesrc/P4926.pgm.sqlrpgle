**free

ctl-opt dftactgrp(*no);

dcl-pi P4926;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P415.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'
/copy 'qrpgleref/P3272.rpgleinc'

dcl-ds theTable extname('T869') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T869 LIMIT 1;

theCharVar = 'Hello from P4926';
dsply theCharVar;
P415();
P559();
P3272();
return;