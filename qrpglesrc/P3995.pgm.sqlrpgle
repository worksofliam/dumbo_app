**free

ctl-opt dftactgrp(*no);

dcl-pi P3995;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P461.rpgleinc'
/copy 'qrpgleref/P3681.rpgleinc'
/copy 'qrpgleref/P3451.rpgleinc'

dcl-ds theTable extname('T361') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T361 LIMIT 1;

theCharVar = 'Hello from P3995';
dsply theCharVar;
P461();
P3681();
P3451();
return;