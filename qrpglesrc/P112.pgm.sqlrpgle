**free

ctl-opt dftactgrp(*no);

dcl-pi P112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds theTable extname('T58') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T58 LIMIT 1;

theCharVar = 'Hello from P112';
dsply theCharVar;
P53();
P59();
P8();
return;