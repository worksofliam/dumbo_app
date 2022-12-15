**free

ctl-opt dftactgrp(*no);

dcl-pi P1257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'

dcl-ds T433 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T433 FROM T433 LIMIT 1;

theCharVar = 'Hello from P1257';
dsply theCharVar;
P11();
P563();
P342();
return;