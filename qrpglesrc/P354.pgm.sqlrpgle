**free

ctl-opt dftactgrp(*no);

dcl-pi P354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T55') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T55 LIMIT 1;

theCharVar = 'Hello from P354';
dsply theCharVar;
P324();
P147();
P54();
return;