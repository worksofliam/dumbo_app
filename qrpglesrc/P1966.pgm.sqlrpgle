**free

ctl-opt dftactgrp(*no);

dcl-pi P1966;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P789.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P1212.rpgleinc'

dcl-ds theTable extname('T479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T479 LIMIT 1;

theCharVar = 'Hello from P1966';
dsply theCharVar;
P789();
P459();
P1212();
return;