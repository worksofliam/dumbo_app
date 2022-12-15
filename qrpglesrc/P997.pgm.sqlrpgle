**free

ctl-opt dftactgrp(*no);

dcl-pi P997;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P670.rpgleinc'
/copy 'qrpgleref/P934.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds theTable extname('T1223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1223 LIMIT 1;

theCharVar = 'Hello from P997';
dsply theCharVar;
P670();
P934();
P49();
return;