**free

ctl-opt dftactgrp(*no);

dcl-pi P33;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T1659') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1659 LIMIT 1;

theCharVar = 'Hello from P33';
dsply theCharVar;
P10();
P3();
P26();
return;