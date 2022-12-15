**free

ctl-opt dftactgrp(*no);

dcl-pi P3432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2851.rpgleinc'
/copy 'qrpgleref/P2186.rpgleinc'
/copy 'qrpgleref/P2286.rpgleinc'

dcl-ds theTable extname('T617') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T617 LIMIT 1;

theCharVar = 'Hello from P3432';
dsply theCharVar;
P2851();
P2186();
P2286();
return;