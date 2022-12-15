**free

ctl-opt dftactgrp(*no);

dcl-pi P578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds theTable extname('T103') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T103 LIMIT 1;

theCharVar = 'Hello from P578';
dsply theCharVar;
P22();
P134();
P121();
return;