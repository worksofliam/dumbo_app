**free

ctl-opt dftactgrp(*no);

dcl-pi P3000;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P862.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P791.rpgleinc'

dcl-ds theTable extname('T982') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T982 LIMIT 1;

theCharVar = 'Hello from P3000';
dsply theCharVar;
P862();
P424();
P791();
return;