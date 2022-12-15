**free

ctl-opt dftactgrp(*no);

dcl-pi P321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T877') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T877 LIMIT 1;

theCharVar = 'Hello from P321';
dsply theCharVar;
P304();
P200();
P162();
return;