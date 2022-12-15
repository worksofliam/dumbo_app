**free

ctl-opt dftactgrp(*no);

dcl-pi P910;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P481.rpgleinc'

dcl-ds theTable extname('T1067') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1067 LIMIT 1;

theCharVar = 'Hello from P910';
dsply theCharVar;
P526();
P265();
P481();
return;