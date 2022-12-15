**free

ctl-opt dftactgrp(*no);

dcl-pi P119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds theTable extname('T371') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T371 LIMIT 1;

theCharVar = 'Hello from P119';
dsply theCharVar;
P104();
P2();
P94();
return;