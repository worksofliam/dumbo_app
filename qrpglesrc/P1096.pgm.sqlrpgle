**free

ctl-opt dftactgrp(*no);

dcl-pi P1096;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1083.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'

dcl-ds theTable extname('T1517') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1517 LIMIT 1;

theCharVar = 'Hello from P1096';
dsply theCharVar;
P1083();
P405();
P412();
return;