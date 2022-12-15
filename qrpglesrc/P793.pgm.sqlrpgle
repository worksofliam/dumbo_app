**free

ctl-opt dftactgrp(*no);

dcl-pi P793;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'

dcl-ds theTable extname('T641') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T641 LIMIT 1;

theCharVar = 'Hello from P793';
dsply theCharVar;
P178();
P568();
P529();
return;