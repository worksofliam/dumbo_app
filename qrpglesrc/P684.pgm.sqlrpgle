**free

ctl-opt dftactgrp(*no);

dcl-pi P684;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P511.rpgleinc'

dcl-ds theTable extname('T767') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T767 LIMIT 1;

theCharVar = 'Hello from P684';
dsply theCharVar;
P589();
P58();
P511();
return;