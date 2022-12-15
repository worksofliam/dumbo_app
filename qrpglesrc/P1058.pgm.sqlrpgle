**free

ctl-opt dftactgrp(*no);

dcl-pi P1058;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P791.rpgleinc'
/copy 'qrpgleref/P987.rpgleinc'
/copy 'qrpgleref/P477.rpgleinc'

dcl-ds theTable extname('T397') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T397 LIMIT 1;

theCharVar = 'Hello from P1058';
dsply theCharVar;
P791();
P987();
P477();
return;