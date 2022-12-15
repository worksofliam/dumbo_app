**free

ctl-opt dftactgrp(*no);

dcl-pi P1403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1128.rpgleinc'
/copy 'qrpgleref/P1220.rpgleinc'
/copy 'qrpgleref/P889.rpgleinc'

dcl-ds theTable extname('T666') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T666 LIMIT 1;

theCharVar = 'Hello from P1403';
dsply theCharVar;
P1128();
P1220();
P889();
return;