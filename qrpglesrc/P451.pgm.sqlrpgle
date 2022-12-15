**free

ctl-opt dftactgrp(*no);

dcl-pi P451;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'

dcl-ds theTable extname('T290') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T290 LIMIT 1;

theCharVar = 'Hello from P451';
dsply theCharVar;
P130();
P223();
P270();
return;