**free

ctl-opt dftactgrp(*no);

dcl-pi P1125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P798.rpgleinc'

dcl-ds theTable extname('T873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T873 LIMIT 1;

theCharVar = 'Hello from P1125';
dsply theCharVar;
P189();
P250();
P798();
return;