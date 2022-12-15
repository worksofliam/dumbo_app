**free

ctl-opt dftactgrp(*no);

dcl-pi P57;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds theTable extname('T555') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T555 LIMIT 1;

theCharVar = 'Hello from P57';
dsply theCharVar;
P22();
P53();
P15();
return;