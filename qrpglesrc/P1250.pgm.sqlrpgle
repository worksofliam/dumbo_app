**free

ctl-opt dftactgrp(*no);

dcl-pi P1250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'

dcl-ds theTable extname('T371') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T371 LIMIT 1;

theCharVar = 'Hello from P1250';
dsply theCharVar;
P796();
P638();
P258();
return;