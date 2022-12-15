**free

ctl-opt dftactgrp(*no);

dcl-pi P601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'

dcl-ds theTable extname('T863') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T863 LIMIT 1;

theCharVar = 'Hello from P601';
dsply theCharVar;
P563();
P143();
P404();
return;