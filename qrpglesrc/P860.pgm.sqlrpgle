**free

ctl-opt dftactgrp(*no);

dcl-pi P860;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P452.rpgleinc'
/copy 'qrpgleref/P715.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T1162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1162 LIMIT 1;

theCharVar = 'Hello from P860';
dsply theCharVar;
P452();
P715();
P54();
return;