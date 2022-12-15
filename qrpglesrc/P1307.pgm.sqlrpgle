**free

ctl-opt dftactgrp(*no);

dcl-pi P1307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds theTable extname('T1727') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1727 LIMIT 1;

theCharVar = 'Hello from P1307';
dsply theCharVar;
P265();
P360();
P35();
return;