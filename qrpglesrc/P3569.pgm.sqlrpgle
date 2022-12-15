**free

ctl-opt dftactgrp(*no);

dcl-pi P3569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P2510.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'

dcl-ds theTable extname('T1012') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1012 LIMIT 1;

theCharVar = 'Hello from P3569';
dsply theCharVar;
P580();
P2510();
P697();
return;