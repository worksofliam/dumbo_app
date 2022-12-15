**free

ctl-opt dftactgrp(*no);

dcl-pi P1350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1049.rpgleinc'
/copy 'qrpgleref/P823.rpgleinc'
/copy 'qrpgleref/P1226.rpgleinc'

dcl-ds theTable extname('T673') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T673 LIMIT 1;

theCharVar = 'Hello from P1350';
dsply theCharVar;
P1049();
P823();
P1226();
return;