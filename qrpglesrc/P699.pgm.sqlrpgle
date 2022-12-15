**free

ctl-opt dftactgrp(*no);

dcl-pi P699;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P440.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds theTable extname('T772') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T772 LIMIT 1;

theCharVar = 'Hello from P699';
dsply theCharVar;
P440();
P160();
P236();
return;