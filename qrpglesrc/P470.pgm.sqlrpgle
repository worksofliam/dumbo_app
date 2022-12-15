**free

ctl-opt dftactgrp(*no);

dcl-pi P470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T716') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T716 LIMIT 1;

theCharVar = 'Hello from P470';
dsply theCharVar;
P62();
P211();
P162();
return;