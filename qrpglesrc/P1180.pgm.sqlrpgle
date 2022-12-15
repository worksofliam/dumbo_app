**free

ctl-opt dftactgrp(*no);

dcl-pi P1180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P804.rpgleinc'
/copy 'qrpgleref/P900.rpgleinc'
/copy 'qrpgleref/P693.rpgleinc'

dcl-ds T40 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T40 FROM T40 LIMIT 1;

theCharVar = 'Hello from P1180';
dsply theCharVar;
P804();
P900();
P693();
return;