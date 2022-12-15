**free

ctl-opt dftactgrp(*no);

dcl-pi P565;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P370.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'

dcl-ds theTable extname('T340') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T340 LIMIT 1;

theCharVar = 'Hello from P565';
dsply theCharVar;
P370();
P537();
P262();
return;