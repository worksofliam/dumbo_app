**free

ctl-opt dftactgrp(*no);

dcl-pi P4214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3827.rpgleinc'
/copy 'qrpgleref/P3948.rpgleinc'
/copy 'qrpgleref/P3875.rpgleinc'

dcl-ds theTable extname('T1076') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1076 LIMIT 1;

theCharVar = 'Hello from P4214';
dsply theCharVar;
P3827();
P3948();
P3875();
return;