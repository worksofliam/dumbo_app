**free

ctl-opt dftactgrp(*no);

dcl-pi P806;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'

dcl-ds theTable extname('T1832') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1832 LIMIT 1;

theCharVar = 'Hello from P806';
dsply theCharVar;
P81();
P209();
P376();
return;