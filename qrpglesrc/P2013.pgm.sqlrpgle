**free

ctl-opt dftactgrp(*no);

dcl-pi P2013;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P484.rpgleinc'
/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P904.rpgleinc'

dcl-ds theTable extname('T869') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T869 LIMIT 1;

theCharVar = 'Hello from P2013';
dsply theCharVar;
P484();
P330();
P904();
return;