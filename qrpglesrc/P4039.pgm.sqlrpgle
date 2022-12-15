**free

ctl-opt dftactgrp(*no);

dcl-pi P4039;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2440.rpgleinc'
/copy 'qrpgleref/P717.rpgleinc'
/copy 'qrpgleref/P2124.rpgleinc'

dcl-ds T290 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T290 FROM T290 LIMIT 1;

theCharVar = 'Hello from P4039';
dsply theCharVar;
P2440();
P717();
P2124();
return;