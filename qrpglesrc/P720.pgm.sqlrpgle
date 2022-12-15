**free

ctl-opt dftactgrp(*no);

dcl-pi P720;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds theTable extname('T181') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T181 LIMIT 1;

theCharVar = 'Hello from P720';
dsply theCharVar;
P78();
P501();
P127();
return;