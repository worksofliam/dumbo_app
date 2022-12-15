**free

ctl-opt dftactgrp(*no);

dcl-pi P1195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1003.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'

dcl-ds theTable extname('T1132') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1132 LIMIT 1;

theCharVar = 'Hello from P1195';
dsply theCharVar;
P1003();
P7();
P160();
return;