**free

ctl-opt dftactgrp(*no);

dcl-pi P1358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1050.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P1049.rpgleinc'

dcl-ds theTable extname('T145') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T145 LIMIT 1;

theCharVar = 'Hello from P1358';
dsply theCharVar;
P1050();
P554();
P1049();
return;