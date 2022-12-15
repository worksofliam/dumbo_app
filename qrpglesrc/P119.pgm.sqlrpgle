**free

ctl-opt dftactgrp(*no);

dcl-pi P119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'

dcl-ds theTable extname('T1108') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1108 LIMIT 1;

theCharVar = 'Hello from P119';
dsply theCharVar;
P97();
P30();
P59();
return;