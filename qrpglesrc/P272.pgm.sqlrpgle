**free

ctl-opt dftactgrp(*no);

dcl-pi P272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'

dcl-ds theTable extname('T98') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T98 LIMIT 1;

theCharVar = 'Hello from P272';
dsply theCharVar;
P4();
P173();
P269();
return;