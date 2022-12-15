**free

ctl-opt dftactgrp(*no);

dcl-pi P919;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T850') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T850 LIMIT 1;

theCharVar = 'Hello from P919';
dsply theCharVar;
P334();
P318();
P79();
return;