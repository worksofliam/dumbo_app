**free

ctl-opt dftactgrp(*no);

dcl-pi P663;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P506.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'

dcl-ds theTable extname('T145') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T145 LIMIT 1;

theCharVar = 'Hello from P663';
dsply theCharVar;
P26();
P506();
P332();
return;